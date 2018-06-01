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

open Ctypes
open GObject_introspection

let generate_files name =
  let module_name = Lexer.snake_case name in
  Binding_utils.Sources.create_ctypes module_name

let rec write_bindings_for namespace = function
  | [] -> ()
  | name :: others ->
      let _ =  begin
        match Repository.require namespace () with
        | Error message -> print_endline message
        | Ok typelib ->
          match Repository.find_by_name namespace name with
          | None ->
              let strs =  ["Unable to find"; name; "in the namespace"; namespace] in
              let message = String.concat " " strs  in
              print_endline  message
          | Some bi ->
              if Base_info.is_deprecated bi then
                let message = name ^ " is deprecated" in
                print_endline message
              else begin
                let open Binding_utils in
                let sources = generate_files name in
                let _ = match Base_info.get_type bi with
                  | Base_info.Boxed | Base_info.Struct -> begin
                      let si = Struct_info.from_baseinfo bi in
                      if Struct_info.is_gtype_struct si then ()
                      else
                        Bind_struct.parse_struct_info bi sources []
                    end
                  | Base_info.Enum ->
                      Bind_enum.parse_enum_info bi sources
                  | Base_info.Flags ->
                      Bind_enum.parse_flags_info bi sources
                  | Base_info.Constant ->
                      Bind_constant.parse_constant_info bi sources
                  | Base_info.Union ->
                      Bind_union.parse_union_info bi sources []
                  | Base_info.Callback -> ()
                  | Base_info.Invalid -> ()
                  | Base_info.Value -> ()
                  | Base_info.Signal -> ()
                  | Base_info.Vfunc -> ()
                  | Base_info.Property -> ()
                  | Base_info.Field -> ()
                  | Base_info.Arg -> ()
                  | Base_info.Type -> ()
                  | Base_info.Unresolved -> ()
                  | Base_info.Object ->
                      Bind_object.parse_object_info bi sources []
                  | Base_info.Invalid_0 -> ()
                  | Base_info.Interface -> ()
                  | _ -> ()
                in Sources.close sources
              end;
        end
        in write_bindings_for namespace others

let write_constant_bindings_for namespace sources skipped =
  let open Binding_utils in
  match Repository.require namespace () with
  | Error message -> print_endline message
  | Ok typelib ->
      let n = Repository.get_n_infos namespace in
      for i = 0 to n - 1 do
        let bi = Repository.get_info namespace i in
        match Base_info.get_name bi with
        | None -> ()
        | Some name ->
            match Base_info.is_deprecated bi,
                  match_one_of name skipped with
            | true , _ -> Sources.buffs_add_deprecated sources name
            | _, true -> Sources.buffs_add_skipped sources name
            | _ ->
                match Base_info.get_type bi with
                | Base_info.Constant ->
                    Bind_constant.parse_constant_info bi sources
                | _ -> ()
      done

let write_enum_and_flag_bindings_for namespace =
  let open Binding_utils in
  match Repository.require namespace () with
  | Error message -> print_endline message
  | Ok typelib ->
      let n = Repository.get_n_infos namespace in
      for i = 0 to n - 1 do
        let bi = Repository.get_info namespace i in
        match Base_info.get_name bi with
        | None -> ()
        | Some name ->
            if Base_info.is_deprecated bi then ()
            else begin
              match Base_info.get_type bi with
              | Base_info.Enum ->
                  let sources = generate_files name in
                  let _ = Bind_enum.parse_enum_info bi sources in
                  Sources.close sources
              | Base_info.Flags ->
                  let sources = generate_files name in
                  let _ = Bind_enum.parse_flags_info bi sources in
                  Sources.close sources
              | _ -> ()
            end
      done

let write_function_bindings_for namespace sources functions =
  let open Binding_utils in
  let rec loop = function
  | [] -> ()
  | name :: others ->
      let _ =  begin
        match Repository.require namespace () with
        | Error message -> print_endline message
        | Ok typelib ->
          match Repository.find_by_name namespace name with
          | None ->
              let strs =  ["Unable to find"; name; "in the namespace"; namespace] in
              let message = String.concat " " strs  in
              print_endline  message
          | Some bi ->
              if Base_info.is_deprecated bi then
                let message = name ^ " is deprecated" in
                print_endline message
              else begin
                match Base_info.get_type bi with
                | Base_info.Function ->
                    Bind_function.parse_function_info bi sources []
                | _ -> ()
              end;
        end
        in loop others
  in
  loop functions
