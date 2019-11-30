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

open Test_utils
open OUnit2
open GI_bindings_generator
open GObject_introspection

let get_object_info namespace name =
  match Repository.require namespace () with
  | Error _ -> None
  | Ok typelib ->
    match Repository.find_by_name namespace name with
    | None -> None
    | Some (base_info) ->
      match Base_info.get_type base_info with
      | Bindings.Base_info.Object ->
        let object_info = Object_info.from_baseinfo base_info in
        Some object_info
      | _ -> None

let object_test namespace name fn =
  match get_object_info namespace name with
  | None -> assert_equal_string name "No base info found"
  | Some (info) -> fn info

let test_append_ctypes_object_declaration test_ctxt =
  let namespace = "GObject" in
  let name = "Object" in
  let writer = fun name info sources -> (
    let _ = Bind_object.append_ctypes_object_declaration name sources in
    Binding_utils.Sources.write_buffs sources
  )
  in
  let mli_content = "type t\n\
                     val t_typ : t typ\n" in
  let ml_content = "type t = unit ptr\n\
                    let t_typ : t typ = ptr void\n" in
  object_test namespace name (fun info ->
    test_writing test_ctxt info name writer mli_content ml_content
    )

let tests =
  "GObject Introspection Bind_object tests" >:::
  [
    "Test append Ctypes object declaration" >:: test_append_ctypes_object_declaration;
  ]
