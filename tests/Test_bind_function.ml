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

open Test_utils
open OUnit2
open GI_bindings_generator
open GObject_introspection

let repo = Repository.get_default ()
let namespace = "GLib"
let typelib = Repository.require repo namespace ()
let name = "ascii_strcasecmp"

let get_function_info name () =
  match Repository.find_by_name repo namespace name with
  | None -> None
  | Some (base_info) -> match Base_info.get_type base_info with
    | Base_info.Function -> let info = Function_info.from_baseinfo base_info in
      Some info
    | _ -> None

let test_function_info name fn =
  match get_function_info name () with
  | None -> assert_equal_string name "No base info found"
  | Some info -> fn info

let test_get_arguments_types test_ctx =
  test_function_info name (fun info ->
      let open Bind_function in
      let ci = Function_info.to_callableinfo info in
      match get_args_information ci None [] with
      | No_args -> assert_equal_string "It should return " "some arguments"
      | Args arg_lists ->
          let _ = assert_equal_int 2 (List.length arg_lists.in_list) in
          let flat =
            List.map (fun a -> get_ocaml_type a) arg_lists.in_list
            |> String.concat " " in
          assert_equal_string "string string" flat
    )

let test_get_return_types test_ctx =
  test_function_info name (fun info ->
      let callable = Function_info.to_callableinfo info in
      match Bind_function.get_return_types callable "Core" [] with
      | Type_names types -> let (ocaml_type, ctypes_type) = List.hd types in
        assert_equal_string "int32" ocaml_type;
        assert_equal_string "int32_t" ctypes_type
      | _ -> assert_equal_string "It should returns " "the return value ocaml and ctypes types"
    )

let test_escape_bad_function_name test_ctxt =
  let cont = "Rand" in
  match Repository.find_by_name repo namespace cont with
  | None -> assert_equal_string name " should return an I info"
  | Some i -> let si = Struct_info.from_baseinfo i in
  let mi = Struct_info.get_method si 0 in
  let mli = "val _double :\n  \
             t structure ptr -> float" in
  let ml = "let _double =\n  \
            foreign \"g_rand_double\" (ptr t_typ @-> returning (double))" in
  let writer = fun n i srcs ->
    let c = Some (cont, "t structure ptr", "ptr t_typ") in
    let _ = Bind_function.append_ctypes_function_bindings n i c srcs [] in
    Binding_utils.Sources.write_buffs srcs
  in
  Test_utils.test_writing test_ctxt mi "double" writer mli ml

let test_function_bindings_for_in_args_only_function test_ctxt =
  let name = "date_get_sunday_weeks_in_year" in
  match Repository.find_by_name repo namespace name with
  | None -> assert_equal_string name " has not been found"
  | Some info -> let fi = Function_info.from_baseinfo info in
     let mli =
       "val date_get_sunday_weeks_in_year :\n  \
        Unsigned.uint16 -> Unsigned.uint8" in
     let ml = "let date_get_sunday_weeks_in_year =\n  \
                       foreign \"g_date_get_sunday_weeks_in_year\" \
                       (uint16_t @-> returning (uint8_t))" in
     let writer = fun n i srcs ->
       let _ = Bind_function.append_ctypes_function_bindings n i None srcs [] in
       Binding_utils.Sources.write_buffs srcs
     in
     Test_utils.test_writing test_ctxt fi name writer mli ml

let test_function_bindings_for_in_args_only_function_gerror test_ctxt =
  let name = "dir_make_tmp" in
  match Repository.find_by_name repo namespace name with
  | None -> assert_equal_string name " has not been found"
  | Some info -> let fi = Function_info.from_baseinfo info in
     let mli ="val dir_make_tmp :\n  \
  string option -> (string option, Error.t structure ptr option) result" in
     let ml =
"let dir_make_tmp tmpl =\n  \
  let dir_make_tmp_raw =\n    \
    foreign \"g_dir_make_tmp\" (string_opt@-> ptr (ptr_opt Error.t_typ) \
    @-> returning (string_opt))\n  in\n  \
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in\n  \
  let value = dir_make_tmp_raw tmpl err_ptr_ptr in\n  \
  match (!@ err_ptr_ptr) with\n  \
  | None -> Ok value\n  \
  | Some _ -> let err_ptr = !@ err_ptr_ptr in\n    \
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) \
    err_ptr in\n    Error (err_ptr)" in
     let writer = fun n i srcs ->
       let _ = Bind_function.append_ctypes_function_bindings n i None srcs [] in
       Binding_utils.Sources.write_buffs srcs
     in
     Test_utils.test_writing test_ctxt fi name writer mli ml

let test_function_bindings_for_args_out_function test_ctxt =
  let cont = "DateTime" in
  let name = "get_ymd" in
  match Repository.find_by_name repo namespace cont with
  | None -> assert_equal_string cont " has not been found"
  | Some date_time_info ->
      let si = Struct_info.from_baseinfo date_time_info in
      match Struct_info.find_method si name with
      | None -> assert_equal_string name " has not been found"
      | Some mi ->
        let mli =
          "val get_ymd :\n  \
           t structure ptr -> (int32 * int32 * int32)" in
        let ml = "let get_ymd self =\n  \
                  let year_ptr = allocate int32_t Int32.zero in\n  \
                  let month_ptr = allocate int32_t Int32.zero in\n  \
                  let day_ptr = allocate int32_t Int32.zero in\n  \
                  let get_ymd_raw =\n    \
                  foreign \"g_date_time_get_ymd\" (ptr t_typ @-> ptr (int32_t) \
                  @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)\n  \
                  in\n  \
                  let ret = get_ymd_raw self year_ptr month_ptr day_ptr in\n  \
                  let year = !@ year_ptr in\n  \
                  let month = !@ month_ptr in\n  \
                  let day = !@ day_ptr in\n  \
                  (year, month, day)" in
        let writer = fun n i srcs ->
          let c = Some (cont, "t structure ptr", "ptr t_typ") in
          let _ = Bind_function.append_ctypes_function_bindings n i c srcs [] in
          Binding_utils.Sources.write_buffs srcs
        in
        Test_utils.test_writing test_ctxt mi name writer mli ml

let test_function_bindings_for_args_out_as_enum_function test_ctxt =
  let namespace = "Gio" in
  let repo = Repository.get_default () in
  let _ = Repository.require repo namespace () in
  let cont = "FileInfo" in
  let name = "get_attribute_data" in
  match Repository.find_by_name repo namespace name with
  | None -> assert_equal_string name "No base info found"
  | Some bi -> match Base_info.get_type bi with
    | Base_info.Function -> begin
      let info = Function_info.from_baseinfo bi in
      let mli =
        "val get_attribute_data :\n  \
         t structure ptr -> string -> \
         (bool * File_attribute_type.t \
         * unit ptr * File_attribute_status.t)" in
      let ml =
      "let get_attribute_data self attribute =\n  \
       let _type_ptr = allocate File_attribute_type.t_view \
       (File_attribute_type.t_view.of_value (Unsigned.UInt32.zero)) in\n  \
       let value_pp_ptr = allocate (ptr_opt void) None in\n  \
       let status_ptr = allocate File_attribute_status.t_view \
       (File_attribute_status.t_view.of_value (Unsigned.UInt32.zero)) in\n  \
       let get_attribute_data_raw =\n    \
       foreign \"g_file_info_get_attribute_data\" (ptr t_typ @-> string @-> \
       ptr (File_attribute_type.t_view) @-> ptr (ptr void) @-> ptr \
       (File_attribute_status.t_view) @-> returning bool)\n  \
       in\n  \
       let ret = get_attribute_data_raw self attribute _type_ptr value_pp_ptr \
       status_ptr in\n  \
       let _type = (!@ _type_ptr) in\n  \
       let value_pp = !@ value_pp_ptr in\n  \
       let status = (!@ status_ptr) in\n  \
       (ret, _type, value_pp, status)"
    in
    let writer = fun n i srcs ->
      let c = Some (cont, "t", "t_typ") in
      let _ = Bind_function.append_ctypes_function_bindings n i c srcs [] in
      Binding_utils.Sources.write_buffs srcs
    in
    Test_utils.test_writing test_ctxt info name writer mli ml

    end
    | _ -> assert_equal_string name "Should be a function"

let test_function_bindings_for_args_out_with_gerror_function test_ctxt =
  let name = "filename_from_uri" in
  match Repository.find_by_name repo namespace name with
  | None -> assert_equal_string name " has not been found"
  | Some info ->
      let fi = Function_info.from_baseinfo info in
      let mli = "val filename_from_uri :\n  \
                 string -> (string option * string option, Error.t structure \
                 ptr option) result" in
    let ml = "let filename_from_uri uri =\n  \
              let hostname_ptr = allocate string_opt None in\n  \
              let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in\n  \
              let filename_from_uri_raw =\n    \
              foreign \"g_filename_from_uri\" (string @-> ptr (string_opt) \
              @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))\n  \
              in\n  \
              let ret = filename_from_uri_raw uri hostname_ptr err_ptr_ptr in\n  \
              let get_ret_value () =\n    \
                let hostname = !@ hostname_ptr in\n    \
                (ret, hostname)\n  \
              in\n  \
              match (!@ err_ptr_ptr) with\n  \
              | None -> Ok (get_ret_value ())\n  \
              | Some _ -> let err_ptr = !@ err_ptr_ptr in\n    \
                let _ = Gc.finalise (function | Some e -> Error.free e | None \
                -> () ) err_ptr in\n    \
                Error (err_ptr)"
    in
    let writer = fun n i srcs ->
      let _ = Bind_function.append_ctypes_function_bindings n i None srcs [] in
      Binding_utils.Sources.write_buffs srcs
    in
    Test_utils.test_writing test_ctxt fi name writer mli ml

let tests =
  "GObject Introspection Bind_function tests" >:::
  [
    "Bind_function get arguments ctypes" >:: test_get_arguments_types;
    "Bind_function get return types" >:: test_get_return_types;
    "Bind_function escape bad function name" >:: test_escape_bad_function_name;
    "Bind_function test function bindings for in args only function" >:: test_function_bindings_for_in_args_only_function;
    "Bind_function test function bindings for args out function" >:: test_function_bindings_for_args_out_function;
    (* "Bind_function test function bindings for args out as enum function" >:: test_function_bindings_for_args_out_as_enum_function; *)
    "Bind_funtcion test function bindings for in args only function that can throw GError" >:: test_function_bindings_for_in_args_only_function_gerror;
    "Bind_function test function bindings for args out with gerror function" >:: test_function_bindings_for_args_out_with_gerror_function;
  ]
