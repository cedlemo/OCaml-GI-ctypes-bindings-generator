(*
 * Copyright 2017 Cedric LE MOIGNE, cedlemo@gmx.com
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

open Test_utils
open OUnit2
open GI_bindings_generator
open GObject_introspection

let get_enum_info namespace enum_name =
  match Repository.find_by_name namespace enum_name with
  | None -> None
  | Some (base_info) ->
    match Base_info.get_type base_info with
    | Bindings.Base_info.Enum -> let enum_info = Enum_info.from_baseinfo base_info in
      Some enum_info
    | _ -> None

let enum_test namespace enum_name fn =
  match get_enum_info namespace enum_name with
  | None -> assert_equal_string enum_name "No base info found"
  | Some (info) -> fn info

let enum_to_type = "type t = Standard | Daylight | Universal"

let enum_type_of_value_sig = "val of_value:
  Unsigned.uint32 -> t"

let enum_type_of_value = "let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Standard
  else if v = Unsigned.UInt32.of_int 1 then Daylight
  else if v = Unsigned.UInt32.of_int 2 then Universal
  else raise (Invalid_argument \"Unexpected TimeType value\")"

let enum_type_to_value_sig = "val to_value:
  t -> Unsigned.uint32"

let enum_type_to_value = "let to_value = function
  | Standard -> Unsigned.UInt32.of_int 0
  | Daylight -> Unsigned.UInt32.of_int 1
  | Universal -> Unsigned.UInt32.of_int 2"

let enum_type_view_sig = "val t_view: t typ"

let enum_type_view = "let t_view = view ~read:of_value ~write:to_value uint32_t"
let test_append_enum_type test_ctxt =
  let namespace = "GLib" in
  let name = "TimeType" in
  let writer = (fun name info sources ->
      let open Binding_utils in
      let mli = Sources.mli sources in
      let ml = Sources.ml sources in
      let values_and_variants = Bind_enum.get_values_and_variants info in
      Bind_enum.append_enum_type values_and_variants mli;
      Bind_enum.append_enum_type values_and_variants ml;
      Sources.write_buffs sources
  ) in
  enum_test namespace name (fun info ->
    test_writing test_ctxt info name writer enum_to_type enum_to_type
  )

let test_append_enum_of_value_fn test_ctxt =
  let namespace = "GLib" in
  let name = "TimeType" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        let values_and_variants = Bind_enum.get_values_and_variants info in
        let _ = Bind_enum.append_enum_of_value_fn name ocaml_type values_and_variants sources in
        Binding_utils.Sources.write_buffs sources
  ) in
  enum_test namespace name (fun info ->
    test_writing test_ctxt info name writer enum_type_of_value_sig enum_type_of_value
  )

let test_append_enum_to_value_fn test_ctxt =
  let namespace = "GLib" in
  let name = "TimeType" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        let values_and_variants = Bind_enum.get_values_and_variants info in
        let _ = Bind_enum.append_enum_to_value_fn name ocaml_type values_and_variants sources in
        Binding_utils.Sources.write_buffs sources
  ) in
  enum_test namespace name (fun info ->
    test_writing test_ctxt info name writer enum_type_to_value_sig enum_type_to_value
  )

let test_append_enum_view test_ctxt =
  let namespace = "GLib" in
  let name = "TimeType" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        let _ = Bind_enum.append_enum_view ctypes_typ sources in
        Binding_utils.Sources.write_buffs sources
  ) in
  enum_test namespace name (fun info ->
      test_writing test_ctxt info name writer enum_type_view_sig enum_type_view
  )

let flags_to_type = "type t = None | Keep_comments | Keep_translations
type t_list = t list"

let flags_of_value_sig = "val of_value:\n  Unsigned.uint32 -> t"
let flags_of_value = "let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Keep_comments
  else if v = Unsigned.UInt32.of_int 2 then Keep_translations
  else raise (Invalid_argument \"Unexpected KeyFileFlags value\")"

let flags_to_value_sig = "val to_value:\n  t -> Unsigned.uint32"
let flags_to_value = "let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Keep_comments -> Unsigned.UInt32.of_int 1
  | Keep_translations -> Unsigned.UInt32.of_int 2"

let flags_type_list_to_value_sig = "val list_to_value:
  t_list -> Unsigned.uint32"
let flags_type_list_to_value = "let list_to_value flags =
  let open Unsigned.UInt32 in
  let rec logor_flags l acc =
    match l with
    | [] -> acc
    | f :: q -> let v = to_value f in
      let acc' = logor acc v in
      logor_flags q acc'
  in
  logor_flags flags zero"
let flags_type_list_of_value_sig = "val list_of_value:
  Unsigned.uint32 -> t_list"
let flags_type_list_of_value = "let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 0 , None ); ( 1 , Keep_comments ); ( 2 , Keep_translations )]
  in
  let rec build_flags_list allf acc =
    match allf with
    | [] -> acc
    | (i, f) :: q -> if ((logand v (of_int i )) <> zero) then build_flags_list q (f :: acc)
      else build_flags_list q acc
  in build_flags_list all_flags []"

let flags_type_view_sig = "val t_list_view : t_list typ"

let flags_type_view = "let t_list_view = view ~read:list_of_value ~write:list_to_value uint32_t"

let get_flags_info namespace enum_name =
  match Repository.find_by_name namespace enum_name with
  | None -> None
  | Some (base_info) ->
    match Base_info.get_type base_info with
    | Bindings.Base_info.Flags -> let info = Enum_info.from_baseinfo base_info in
      Some info
    | _ -> None

let flags_test namespace enum_name fn =
  match get_flags_info namespace enum_name with
  | None -> assert_equal_string enum_name "No base info found"
  | Some (info) -> fn info

let test_append_flags_types test_ctxt =
  let namespace = "GLib" in
  let name = "KeyFileFlags" in
  let writer = (fun name info sources ->
      let open Binding_utils in
      let mli = Sources.mli sources in
      let ml = Sources.ml sources in
      let values_and_variants = Bind_enum.get_values_and_variants info in
      Bind_enum.append_flags_types values_and_variants mli;
      Bind_enum.append_flags_types values_and_variants ml;
      Sources.write_buffs sources
  ) in
  flags_test namespace name (fun info ->
    test_writing test_ctxt info name writer flags_to_type flags_to_type
  )

let test_append_enum_flags_of_value_fn test_ctxt =
  let namespace = "GLib" in
  let name = "KeyFileFlags" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        let values_and_variants = Bind_enum.get_values_and_variants info in
        Bind_enum.append_enum_of_value_fn name ocaml_type values_and_variants sources;
        Binding_utils.Sources.write_buffs sources
  ) in
  flags_test namespace name (fun info ->
    test_writing test_ctxt info name writer flags_of_value_sig flags_of_value
  )

let test_append_enum_flags_to_value_fn test_ctxt =
  let namespace = "GLib" in
  let name = "KeyFileFlags" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        let values_and_variants = Bind_enum.get_values_and_variants info in
        Bind_enum.append_enum_to_value_fn name ocaml_type values_and_variants sources;
        Binding_utils.Sources.write_buffs sources
  ) in
  flags_test namespace name (fun info ->
    test_writing test_ctxt info name writer flags_to_value_sig flags_to_value
)

let test_append_enum_flags_list_to_value_fn test_ctxt =
  let namespace = "GLib" in
  let name = "KeyFileFlags" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        Bind_enum.append_flags_list_to_value_fn name ocaml_type sources;
        Binding_utils.Sources.write_buffs sources
  ) in
  flags_test namespace name (fun info ->
      test_writing test_ctxt info name writer flags_type_list_to_value_sig flags_type_list_to_value
  )

let test_append_enum_flags_list_of_value_fn test_ctxt =
  let namespace = "GLib" in
  let name = "KeyFileFlags" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        let values_and_variants = Bind_enum.get_values_and_variants info in
        Bind_enum.append_flags_list_of_value_fn name ocaml_type values_and_variants sources;
        Binding_utils.Sources.write_buffs sources
  ) in
  flags_test namespace name (fun info ->
    test_writing test_ctxt info name writer flags_type_list_of_value_sig flags_type_list_of_value
  )

let test_append_flags_view test_ctxt =
  let namespace = "GLib" in
  let name = "KeyFileFlags" in
  let writer = (fun name info sources ->
      let tag = Enum_info.get_storage_type info in
      match Binding_utils.type_tag_to_bindings_types tag with
      | Binding_utils.Not_implemented tag -> assert_equal_string tag "should be implemented"
      | Binding_utils.Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
        Bind_enum.append_flags_view ctypes_typ sources;
        Binding_utils.Sources.write_buffs sources
  ) in
  enum_test namespace name (fun info ->
      test_writing test_ctxt info name writer flags_type_view_sig flags_type_view
  )

let tests =
  "GObject Introspection Bind_enum tests" >:::
  [
    "Bind_enum append enum type" >:: test_append_enum_type;
    "Bind_enum append enum view reader" >:: test_append_enum_of_value_fn;
    "Bind_enum append enum view writer" >:: test_append_enum_to_value_fn;
    "Bind_enum append enum view" >:: test_append_enum_view;
    "Bind_enum append enum flags type" >:: test_append_flags_types;
    "Bind_enum append enum flags of value" >:: test_append_enum_flags_of_value_fn;
    "Bind_enum append enum flags to value" >:: test_append_enum_flags_to_value_fn;
    "Bind_enum append enum flags list to value" >:: test_append_enum_flags_list_to_value_fn;
    "Bind_enum append enum flags list of value" >:: test_append_enum_flags_list_of_value_fn
  ]
