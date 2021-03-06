(*
 * Copyright 2017-2018 Cedric LE MOIGNE, cedlemo@gmx.com
 * This file is part of OCaml-GObject-Introspection.
 *
 * OCaml-GObject-Introspection is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * OCaml-GObject-Introspection is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OCaml-GObject-Introspection.  If not, see <http://www.gnu.org/licenses/>.
 *)

open GObject_introspection

let append_ctypes_struct_declaration name sources =
  let open Binding_utils in
  let mli = Sources.mli sources in
  let ml = Sources.ml sources in
  File.buff_add_line mli "type t";
  File.buff_add_line mli "val t_typ : t structure typ";
  File.buff_add_line ml "type t";
  File.bprintf ml "let t_typ : t structure typ = structure \"%s\"\n" name;
  Sources.buffs_add_eol sources

let handle_rec_struct struct_name (ocaml_type, ctypes_typ) =
  if (struct_name ^ ".t structure") = ocaml_type then ("t structure", "t_typ")
  else
    if (struct_name ^ ".t structure ptr") = ocaml_type
    then ("t structure ptr", "ptr t_typ")
    else (ocaml_type, ctypes_typ)

let append_ctypes_struct_field_declarations struct_name info sources skip_types =
  let open Binding_utils in
  let mli = Sources.mli sources in
  let ml = Sources.ml sources in
  let append_ctypes_struct_field_declaration field_info =
    let bi = Field_info.to_baseinfo field_info in
    match Base_info.get_name bi with
    | None -> false
    | Some name ->
      let ti = Field_info.get_type field_info in
      match type_info_to_bindings_types ti false with
      | Not_implemented tag_name ->
        let coms =
          Printf.sprintf "Struct field %s : %s tag not implemented"
          struct_name tag_name in
        Sources.buffs_add_comments sources coms;
        false
      | Types {ocaml = ot; ctypes = ct } ->
        if Binding_utils.match_one_of ot skip_types then
          let coms = Printf.sprintf "field type %s" ot in
          Sources.buffs_add_skipped sources coms;
          false
        else
          let (ot', ct') = handle_rec_struct struct_name (ot, ct) in
          File.bprintf mli "val f_%s: (%s, t structure) field\n" name ot';
          File.bprintf ml "let f_%s = field t_typ \"%s\" (%s)\n" name name ct';
          true
  in
  let n = Struct_info.get_n_fields info in
  let rec iterate_over_field index n_implemented =
    if index = n then n_implemented
    else (
      let field_info = Struct_info.get_field info index in
      if append_ctypes_struct_field_declaration field_info then
        iterate_over_field (index + 1) (n_implemented + 1)
      else
        iterate_over_field (index + 1) n_implemented
    )
  in
  if iterate_over_field 0 0 > 0 then (
    let _ = File.buff_add_line ml "let _ = seal t_typ" in
    Sources.buffs_add_eol sources
  )

let append_ctypes_struct_methods_bindings struct_name info sources skip_types =
  let n = Struct_info.get_n_methods info in
  for i = 0 to n - 1 do
    let mi = Struct_info.get_method info i in
    let bi = Function_info.to_baseinfo mi in
    if Base_info.is_deprecated bi then ()
    else (
    match Base_info.get_name bi with
    | None -> ()
    | Some n ->
        let c = Some (struct_name, "t structure ptr", "ptr t_typ") in
        Bind_function.append_ctypes_function_bindings n mi c sources skip_types
  )
  done

let parse_struct_info info sources skip_types =
  let open Binding_utils in
  match get_binding_name info with
  | None -> ()
  | Some name -> let info' = Struct_info.from_baseinfo info in
    append_ctypes_struct_declaration name sources;
    append_ctypes_struct_field_declarations name info' sources skip_types;
    append_ctypes_struct_methods_bindings name info' sources skip_types;
    Sources.write_buffs sources
