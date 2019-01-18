(*
 * Copyright 2018 Cedric LE MOIGNE, cedlemo@gmx.com
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

let append_ctypes_object_declaration name sources =
  let open Binding_utils in
  let mli = Sources.mli sources in
  let ml = Sources.ml sources in
  File.buff_add_line mli "type t";
  File.buff_add_line mli "val t_typ : t typ";
  File.buff_add_line ml "type t = unit ptr";
  File.bprintf ml "let t_typ : t typ = ptr void\n";
  Sources.buffs_add_eol sources

let append_ctypes_object_property_declarations object_name info sources skip_types =
  let open Binding_utils in
  let mli = Sources.mli sources in
  let ml = Sources.ml sources in
  let append_setter_for prop_info =
    ()
  in
  let append_getter_for prop_info =
    ()
  in
  let n = Object_info.get_n_properties info in
  let rec iterate_over_props index =
    if index = n then ()
    else begin
      let prop_info = Object_info.get_property info index in
      let _ = append_setter_for prop_info in
      append_getter_for prop_info
    end
  in
  iterate_over_props 0

let append_ctypes_object_methods_bindings object_name info sources skip_types =
  let n = Object_info.get_n_methods info in
  for i = 0 to n - 1 do
    let mi = Object_info.get_method info i in
    let bi = Function_info.to_baseinfo mi in
    match Base_info.get_name bi with
    | None -> ()
    | Some n ->
        let c = Some (object_name, "t ptr", "ptr t_typ") in
        Bind_function.append_ctypes_function_bindings n mi c sources skip_types
  done

let parse_object_info info sources skip_types =
  let open Binding_utils in
  match get_binding_name info with
  | None -> ()
  | Some name -> let info' = Object_info.from_baseinfo info in
    append_ctypes_object_declaration name sources;
    append_ctypes_object_methods_bindings name info' sources skip_types;
    Sources.write_buffs sources
