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
open Foreign
open GObject_introspection

(* Check is the argument is of the same type of the of the current module in
 * which the bindings are generated.
 * For example, if this code generator is parsing arguments of a function that
 * has to be defined in the Core module, when it finds an argument with the
 * type Core.a_type, in order to compile, this type should be written as "a_type".
 * *)
let filter_same_argument_type_as_container container_name (ocaml_type, ctypes_typ) =
  let open Binding_utils in
  let module_pattern = container_name ^ "." in
  let ocaml_type' = string_pattern_remove ocaml_type module_pattern in
  let ctypes_typ' = string_pattern_remove ctypes_typ module_pattern in
  (ocaml_type', ctypes_typ')

let check_if_types_are_not_from_core =
  filter_same_argument_type_as_container "Core"

type func_types = | Not_handled of string
                  | Skipped of string
                  | Type_names of (string * string) list

let get_return_types callable container skip_types =
  if Callable_info.skip_return callable then Type_names [("unit", "void")]
  else let ret = Callable_info.get_return_type callable in
    let may_be_null = Callable_info.may_return_null callable in
    let can_throw_gerror = Callable_info.can_throw_gerror callable in
    match Binding_utils.type_info_to_bindings_types ret (may_be_null || can_throw_gerror) with
    | Binding_utils.Not_implemented tag_name -> Not_handled tag_name
    | Types {ocaml = ocaml_type; ctypes = ctypes_typ} ->
      if Binding_utils.match_one_of ocaml_type skip_types then Skipped ocaml_type
      else begin
        if ocaml_type = "string" then
          Type_names [("string option", "string_opt")]
        else
          let types =
            filter_same_argument_type_as_container container (ocaml_type, ctypes_typ)
          in Type_names [types]
      end
(* TODO : how to free the returned data
   match Callable_info.get_caller_owns callable with
   | Arg_info.Nothing -> ()
   | Arg_info.Container -> ()
   | Arg_info.Everything -> ()
*)

type arg = Not_implemented of string
         | Skipped of string
         | Arg of {name : string; ocaml_type : string; ctypes_type : string; may_be_null: bool; type_info : Type_info.t structure ptr option}

type arg_lists = {in_list : arg list; out_list : arg list; in_out_list : arg list}

type args = No_args | Args of arg_lists

let has_in_arg = function
  | No_args -> false
  | Args args -> if List.length args.in_list > 0 then true else false

let has_out_arg = function
  | No_args -> false
  | Args args -> if List.length args.out_list > 0 then true else false

let has_in_out_arg = function
  | No_args -> false
  | Args args -> if List.length args.in_out_list > 0 then true else false

let has_not_implemented_arg = function
  | No_args -> None
  | Args args ->
    let search =
      List.find_opt (fun a -> match a with
          | Not_implemented _ -> true
          | _ -> false)
    in
    match search args.in_list with
    | Some a -> Some a
    | None -> match search args.out_list with
      | Some a -> Some a
      | None -> search args.in_out_list

let has_skipped_arg = function
  | No_args -> None
  | Args args ->
    let search l =
      List.find_opt (fun a -> match a with
          | Skipped _ -> true
          | _ -> false) l
    in
    match search args.in_list with
    | Some a -> Some a
    | None -> match search args.out_list with
      | Some a -> Some a
      | None -> search args.in_out_list

let arg_may_be_null = function
  | Not_implemented message -> raise (Failure (Printf.sprintf "arg_may_be_null : Not_implemented -> %s" message))
  | Skipped message -> raise (Failure (Printf.sprintf "arg_may_be_null : Skipped -> %s" message))
  | Arg arg -> arg.may_be_null

(** Get the escaped name (valid OCaml variable name) of the argument. Raise a Failure
 *  exception. It is an error to try to get the name of the argument while I should
 *  skeep / not implement the function bindings *)
let get_escaped_arg_name = function
  | Not_implemented message -> raise (Failure (Printf.sprintf "get_escaped_arg_names : Not_implemented -> %s" message))
  | Skipped message -> raise (Failure (Printf.sprintf "get_escaped_arg_names : Skipped -> %s" message))
  | Arg arg -> Binding_utils.ensure_valid_variable_name arg.name

(** Get a list of escaped names from a list of arguments. *)
let get_escaped_arg_names =
  List.map get_escaped_arg_name

(** Get a tuple form of names from a list of arguments. *)
let escaped_arg_names_to_tuple_form args =
  get_escaped_arg_names args |> String.concat ", "

(** Get space separated names from list of arguments. *)
let escaped_arg_names_space_sep args =
  get_escaped_arg_names args |> String.concat " "

(** get the OCaml type of an argument and raise an exception if it is not implemented
 *  or if it is skipped. *)
let get_ocaml_type = function
  | Not_implemented message -> raise (Failure (Printf.sprintf "get_ocaml_type : Not_implemented -> %s" message))
  | Skipped message -> raise (Failure (Printf.sprintf "get_ocaml_type : Skipped -> %s" message))
  | Arg arg -> arg.ocaml_type

(** get the OCaml types of a list of arguments. *)
let get_ocaml_types =
  List.map (fun a -> get_ocaml_type a)

(** Transform a list of arguments to the corresponding mli signature. *)
let ocaml_types_to_mli_sig l =
  get_ocaml_types l |> String.concat " -> "

(** get the Ctypes type of an argument and raise an exception if it is not implemented
 *  or if it is skipped. *)
let get_ctypes_type = function
  | Not_implemented message -> raise (Failure (Printf.sprintf "get_ocaml_type : Not_implemented -> %s" message))
  | Skipped message -> raise (Failure (Printf.sprintf "get_ocaml_type : Skipped -> %s" message))
  | Arg arg -> arg.ctypes_type

(** Get the Ctypes types of a list of arguments. *)
let get_ctypes_types =
  List.map (fun a -> get_ctypes_type a)

(** Transform a list of arguments to the corresponding ctypes foreign signature. *)
let ctypes_types_to_foreign_sig l =
  get_ctypes_types l |> String.concat " @-> "

(** get the Type_info.t of an argument or raise an exception if it is not
 *  implemented or if it is skipped. *)
let get_type_info = function
  | Not_implemented message -> raise (Failure (Printf.sprintf "get_type_info : Not_implemented -> %s" message))
  | Skipped message -> raise (Failure (Printf.sprintf "get_type_info : Skipped -> %s" message))
  | Arg arg -> arg.type_info

let get_args_information callable container skip_types =
  let cont_n = match container with | None -> "Core" | Some (c, _, _) -> c in
  let n = Callable_info.get_n_args callable in
  let is_method = Callable_info.is_method callable in
  if n = 0 && not is_method then No_args
  else (
    let fetch_arg_info arg =
      let t_info = Arg_info.get_type arg in
      let may_be_null = Arg_info.may_be_null arg in
      match Binding_utils.type_info_to_bindings_types t_info may_be_null with
      | Binding_utils.Not_implemented tag_name -> Not_implemented tag_name
      | Types {ocaml = ot; ctypes = ct} ->
        let (ocaml_type, ctypes_type) =
          filter_same_argument_type_as_container cont_n (ot, ct) in
        if Binding_utils.match_one_of ocaml_type skip_types then
          Skipped ocaml_type
        else begin
          let name = (
            let info' = Arg_info.to_baseinfo arg in
            match Base_info.get_name info' with
            | None ->
              let msg = "It should have a name :Bind_function Arg_info.in"
              in raise (Failure msg)
            | Some s -> s ) in
          let type_info = Some t_info in
          Arg {name; ocaml_type; ctypes_type; may_be_null; type_info }
        end
    in
    let append_self_if_needed l =
      if is_method then
        let ocaml_type, ctypes_type = begin match container with
          | None -> let msg = "The container can not be None, this is a Method"
            in raise (Failure msg)
          | Some (_, ot, ct) -> (ot, ct)
        end in
        let arg = Arg { name = "self";
                        ocaml_type;
                        ctypes_type;
                        type_info = None ;
                        may_be_null = false } in
        arg :: l
      else l
    in
    let rec _each_arg i {in_list; out_list; in_out_list} =
      if i >= n then { in_list = append_self_if_needed (List.rev in_list);
                       out_list = List.rev out_list;
                       in_out_list = List.rev in_out_list;
                     }
      else (
        let arg = Callable_info.get_arg callable i in
        match Arg_info.get_direction arg with
        | Arg_info.In ->
          let in_list = (fetch_arg_info arg) :: in_list in
          _each_arg (i + 1) {in_list; out_list; in_out_list}
        | Arg_info.Out ->
          let out_list = (fetch_arg_info arg) :: out_list in
          _each_arg (i + 1 ) {in_list; out_list; in_out_list}
        | Arg_info.InOut ->
          let in_out_list = (fetch_arg_info arg) :: in_out_list in
          _each_arg (i + 1) {in_list; out_list; in_out_list}
      )
    in
    let empty_args = {in_list = []; out_list = []; in_out_list = []} in
    Args (_each_arg 0 empty_args)
  )

(** GError related values and function. *)
let error_ocaml_type = "Error.t structure ptr option"

let error_ctypes_type = "ptr_opt Error.t_typ"

let allocate_gerror = "let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in"

let return_gerror_result ?(indent=1) ?(ret="value") () =
  let sep = String.make (indent * 2) ' ' in
  Printf.sprintf
    "%smatch (!@ err_ptr_ptr) with\n%s\
     | None -> Ok %s\n%s\
     | Some _ -> let err_ptr = !@ err_ptr_ptr in\n  %s\
     let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in\n  %s\
     Error (err_ptr)" sep sep ret sep sep sep

(** Write the signature of the bindings. *)
let write_mli_signature mli name arguments ocaml_ret can_throw_gerror =
  let open Binding_utils in
  let _ = File.bprintf mli "val %s :\n  " name in
  match arguments with
  | No_args ->
    if can_throw_gerror then
      File.bprintf mli "unit -> (%s, %s) result\n" ocaml_ret error_ocaml_type
    else
      File.bprintf mli "unit -> %s\n" ocaml_ret
  | Args args ->
    let build_return_type_for_signature args_list =
      match get_ocaml_types args_list with
      | [] ->
        None
      | args_types ->
        Some (Printf.sprintf "%s" (String.concat " * " args_types))
    in
    let ocaml_types_out =
      build_return_type_for_signature args.out_list
    in
    let ocaml_types_in_out =
      build_return_type_for_signature args.in_out_list
    in
    let args_in_out_sig = ocaml_types_to_mli_sig args.in_out_list in
    let args_in_mli_sig = match args.in_list with
      | [] -> None
      | l -> Some (ocaml_types_to_mli_sig l)
    in
    let ret_type = match ocaml_ret with "unit" -> None | _ -> Some ocaml_ret in
    if can_throw_gerror then
      match args_in_mli_sig, ocaml_types_out, ocaml_types_in_out, ret_type with
      | None, None, None, _ ->
        File.bprintf mli "unit -> (%s, %s) result\n" ocaml_ret error_ocaml_type
      | Some args_in, None, None, _ ->
        File.bprintf mli "%s -> (%s, %s) result\n" args_in ocaml_ret error_ocaml_type
      | None, Some args_out, None, None ->
        File.bprintf mli "unit -> (%s, %s) result\n" args_out error_ocaml_type
      | None, Some args_out, None, Some ocaml_ret ->
        File.bprintf mli "unit -> (%s * %s, %s) result\n" ocaml_ret args_out error_ocaml_type
      | Some args_in, Some args_out, None, None ->
        File.bprintf mli "%s -> (%s, %s) result\n" args_in args_out error_ocaml_type
      | Some args_in, Some args_out, None, Some ocaml_ret ->
        File.bprintf mli "%s -> (%s * %s, %s) result\n" args_in ocaml_ret args_out error_ocaml_type
      | None, None, Some args_in_out, None ->
        File.bprintf mli "%s -> (%s, %s) result\n" args_in_out_sig args_in_out error_ocaml_type
      | None, None, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> (%s * %s, %s) result\n" args_in_out_sig ocaml_ret args_in_out error_ocaml_type
      | Some args_in, None, Some args_in_out, None ->
        File.bprintf mli "%s -> %s -> (%s, %s) result\n" args_in args_in_out_sig args_in_out error_ocaml_type
      | Some args_in, None, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> %s -> (%s * %s, %s) result\n" args_in args_in_out_sig ocaml_ret args_in_out error_ocaml_type
      | None, Some args_out, Some args_in_out, None ->
        File.bprintf mli "%s -> (%s * %s, %s) result\n" args_in_out_sig args_out args_in_out error_ocaml_type
      | None, Some args_out, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> (%s * %s * %s, %s) result\n" args_in_out_sig ocaml_ret args_out args_in_out error_ocaml_type
      | Some args_in, Some args_out, Some args_in_out, None ->
        File.bprintf mli "%s -> %s -> (%s * %s, %s) result\n" args_in args_in_out_sig args_out args_in_out error_ocaml_type
      | Some args_in, Some args_out, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> %s -> (%s * %s * %s, %s) result\n" args_in args_in_out_sig ocaml_ret args_out args_in_out error_ocaml_type
    else
      match args_in_mli_sig, ocaml_types_out, ocaml_types_in_out, ret_type with
      | None, None, None, _ ->
        File.bprintf mli "unit -> %s\n" ocaml_ret
      | Some args_in, None, None, _ ->
        File.bprintf mli "%s -> %s\n" args_in ocaml_ret
      | None, Some args_out, None, None ->
        File.bprintf mli "unit -> (%s)\n" args_out
      | None, Some args_out, None, Some ocaml_ret ->
        File.bprintf mli "unit -> (%s * %s)\n" ocaml_ret args_out
      | Some args_in, Some args_out, None, None ->
        File.bprintf mli "%s -> (%s)\n" args_in args_out
      | Some args_in, Some args_out, None, Some ocaml_ret ->
        File.bprintf mli "%s -> (%s * %s)\n" args_in ocaml_ret args_out
      | None, None, Some args_in_out, None ->
        File.bprintf mli "%s -> (%s)\n" args_in_out_sig args_in_out
      | None, None, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> (%s * %s)\n" args_in_out_sig ocaml_ret args_in_out
      | Some args_in, None, Some args_in_out, None ->
        File.bprintf mli "%s -> %s -> (%s)\n" args_in args_in_out_sig args_in_out
      | Some args_in, None, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> %s -> (%s * %s)\n" args_in args_in_out_sig ocaml_ret args_in_out
      | None, Some args_out, Some args_in_out, None ->
        File.bprintf mli "%s -> (%s * %s)\n" args_in_out_sig args_out args_in_out
      | None, Some args_out, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> (%s * %s * %s)\n" args_in_out_sig ocaml_ret args_out args_in_out
      | Some args_in, Some args_out, Some args_in_out, None ->
        File.bprintf mli "%s -> %s -> (%s * %s)\n" args_in args_in_out_sig args_out args_in_out
      | Some args_in, Some args_out, Some args_in_out, Some ocaml_ret ->
        File.bprintf mli "%s -> %s -> (%s * %s * %s)\n" args_in args_in_out_sig ocaml_ret args_out args_in_out

let write_function_name ml name arguments can_throw_gerror =
  let open Binding_utils in
  match arguments with
  | No_args ->
    File.bprintf ml "let %s =\n" name
  | Args args ->
    let args_names = function
      | [] -> None
      | l -> Some (escaped_arg_names_space_sep l)
    in
    let args_in_names = args_names args.in_list in
    let args_out_names = args_names args.out_list in
    let args_in_out_names = args_names args.in_out_list in
    match args_in_names, args_out_names, args_in_out_names, can_throw_gerror with
    | None, None, None, false->
      File.bprintf ml "let %s =\n" name
    | None, None, None, true->
      File.bprintf ml "let %s () =\n" name
    | None, Some out_params, None, _->
      File.bprintf ml "let %s () =\n" name
    | Some in_params, None, None, false ->
      File.bprintf ml "let %s =\n" name
    | Some in_params, _, None, _ ->
      File.bprintf ml "let %s %s =\n" name in_params
    | None, _, Some in_out_params, _ ->
      File.bprintf ml "let %s %s =\n" name in_out_params
    | Some in_params, _, Some in_out_params, _ ->
      File.bprintf ml "let %s %s %s =\n" name in_params in_out_params

(* Write the Ctypes foreign declaration directly or inside a function ("fn_name_raw")
 * when there are out arguments *)
let write_foreign_declaration ml name symbol arguments can_throw_gerror ctypes_ret =
  let open Binding_utils in
  match arguments with
  | No_args ->
    if can_throw_gerror then
      let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
      File.bprintf ml "(ptr (%s) @-> returning (%s))\n  in\n" error_ctypes_type ctypes_ret
    else
      File.bprintf ml "  foreign \"%s\" (void @-> returning (%s))\n" symbol ctypes_ret
  | Args args ->
    let args_by_value_to_foreign_sig = function
      | [] -> None
      | l -> Some (ctypes_types_to_foreign_sig l)
    in
    let args_by_ptr_to_foreign_sig = function
      | [] -> None
      | l -> Some (String.concat " @-> " (List.map (fun a -> Printf.sprintf "ptr (%s)" (get_ctypes_type a)) l))
    in
    let args_in_foreign_sig = args_by_value_to_foreign_sig args.in_list in
    let args_out_foreign_sig =  args_by_ptr_to_foreign_sig args.out_list in
    let args_in_out_foreign_sig = args_by_ptr_to_foreign_sig args.in_out_list in
    if can_throw_gerror then
      let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
      match args_in_foreign_sig, args_out_foreign_sig, args_in_out_foreign_sig with
      | None, None, None -> (* Should not appear raise an exception ? *)
        File.bprintf ml "(ptr (%s) @-> returning (%s))\n  in\n" error_ctypes_type ctypes_ret
      | Some args_in, None, None ->
        File.bprintf ml "(%s @-> ptr (%s) @-> returning (%s))\n  in\n" args_in error_ctypes_type ctypes_ret
      | None, Some args_out, None ->
        File.bprintf ml "(%s @-> ptr (%s) @-> returning (%s))\n  in\n" args_out error_ctypes_type ctypes_ret
      | Some args_in, Some args_out, None ->
        File.bprintf ml "(%s @-> %s @-> ptr (%s) @-> returning (%s))\n  in\n" args_in args_out error_ctypes_type ctypes_ret
      | None, None, Some args_in_out ->
        File.bprintf ml "(%s @-> ptr (%s) @-> returning (%s))\n  in\n" args_in_out error_ctypes_type ctypes_ret
      | Some args_in, None, Some args_in_out ->
        File.bprintf ml "(%s @-> %s @-> ptr (%s) @-> returning (%s))\n  in\n" args_in args_in_out error_ctypes_type ctypes_ret
      | None, Some args_out, Some args_in_out ->
        File.bprintf ml "(%s @-> %s @-> ptr (%s) @-> returning (%s))\n  in\n" args_out args_in_out error_ctypes_type ctypes_ret
      | Some args_in, Some args_out, Some args_in_out ->
        File.bprintf ml "(%s @-> %s @-> %s @-> ptr (%s) @-> returning (%s))\n  in\n" args_in args_out args_in_out error_ctypes_type ctypes_ret
    else
      match args_in_foreign_sig, args_out_foreign_sig, args_in_out_foreign_sig with
      | None, None, None -> (* Should not appear raise an exception ? *)
        File.bprintf ml "  foreign \"%s\" (void @-> returning (%s))\n" symbol ctypes_ret
      | Some args_in, None, None ->
        File.bprintf ml "  foreign \"%s\" (%s @-> returning (%s))\n" symbol args_in ctypes_ret
      | None, Some args_out, None ->
        let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
        File.bprintf ml "(%s @-> returning (%s))\n  in\n" args_out ctypes_ret
      | Some args_in, Some args_out, None ->
        let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
        File.bprintf ml "(%s @-> %s @-> returning (%s))\n  in\n" args_in args_out ctypes_ret
      | None, None, Some args_in_out ->
        let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
        File.bprintf ml "(%s @-> returning (%s))\n  in\n" args_in_out ctypes_ret
      | Some args_in, None, Some args_in_out ->
        let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
        File.bprintf ml "(%s @-> %s @-> returning (%s))\n  in\n" args_in args_in_out ctypes_ret
      | None, Some args_out, Some args_in_out ->
        let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
        File.bprintf ml "(%s @-> %s @-> returning (%s))\n  in\n" args_out args_in_out ctypes_ret
      | Some args_in, Some args_out, Some args_in_out ->
        let _ = File.bprintf ml "  let %s_raw =\n    foreign \"%s\" " name symbol in
        File.bprintf ml "(%s @-> %s @-> %s @-> returning (%s))\n  in\n" args_in args_out args_in_out ctypes_ret

(** Write the instructions if needed (gerror and out arguments) that execute the
 *  function_name_raw function. *)
let write_compute_value_instructions ml name arguments can_throw_gerror =
  let open Binding_utils in
  match arguments with
  | No_args ->
    if can_throw_gerror then
      File.bprintf ml "  let value = %s_raw err_ptr_ptr in\n" name
  | Args args ->
    let args_names = function
      | [] -> None
      | l -> Some (escaped_arg_names_space_sep l)
    in
    let args_ptr_names = function
      | [] -> None
      | l -> Some (List.map (fun a -> (get_escaped_arg_name a) ^ "_ptr") l |> String.concat " ")
    in
    let args_in_names = args_names args.in_list in
    let args_out_names =  args_ptr_names args.out_list in
    let args_in_out_names = args_ptr_names args.in_out_list in
    if can_throw_gerror then
      match args_in_names, args_out_names, args_in_out_names with
      | None, None, None ->
        File.bprintf ml "  let ret = %s_raw err_ptr_ptr in\n" name
      | Some args_in, None, None ->
        File.bprintf ml "  let ret = %s_raw %s err_ptr_ptr in\n" name args_in
      | None, Some args_out, None ->
        File.bprintf ml "  let ret = %s_raw %s err_ptr_ptr in\n" name args_out
      | Some args_in, Some args_out, None ->
        File.bprintf ml "  let ret = %s_raw %s %s err_ptr_ptr in\n" name args_in args_out
      | None, None, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s err_ptr_ptr in\n" args_in_out name
      | Some args_in, None, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s %s err_ptr_ptr in\n" name args_in args_in_out
      | None, Some args_out, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s %s err_ptr_ptr in\n" name args_out args_in_out
      | Some args_in, Some args_out, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s %s %s err_ptr_ptr in\n" name args_in args_out args_in_out
    else
      match args_in_names, args_out_names, args_in_out_names with
      | _, None, None -> ()
      | None, Some args_out, None ->
        File.bprintf ml "  let ret = %s_raw %s in\n" name args_out
      | Some args_in, Some args_out, None ->
        File.bprintf ml "  let ret = %s_raw %s %s in\n" name args_in args_out
      | None, None, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s in\n" args_in_out name
      | Some args_in, None, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s %s in\n" name args_in args_in_out
      | None, Some args_out, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s %s in\n" name args_out args_in_out
      | Some args_in, Some args_out, Some args_in_out ->
        File.bprintf ml "  let ret = %s_raw %s %s %s in\n" name args_in args_out args_in_out

(* This function creates all the instructions needed to allocate gerror structure
 * or out arguments or in/out arguments when needed. *)
let write_allocation_instructions ml name arguments container can_throw_gerror =
  let open Binding_utils in
  let _ = if can_throw_gerror then File.bprintf ml "  %s\n" allocate_gerror in
  match arguments with
  | No_args -> ()
  | Args args ->
    let get_out_arg_alloc_instructions a =
      let name' = get_escaped_arg_name a in
      match get_type_info a with
      | None ->
        let message = "get_out_argument_allocation_intructions: no typeinfo for arg" ^ name' in
        let f = Failure message in raise f
      | Some type_info ->
        let may_be_null = arg_may_be_null a in
        match allocate_out_argument type_info name' may_be_null with
        | Error message ->
          let message' = Printf.sprintf
              "unable to get type to allocate for \
               argument named %s of type '%s' in function %s"
              name' message name  in
          let f = Failure message' in raise f
        | Ok instructions -> let pattern = container ^ "." in
          Binding_utils.string_pattern_remove instructions pattern
    in
    let get_in_out_arg_alloc_instructions a =
      let name' = get_escaped_arg_name a in
      match get_type_info a with
      | None ->
        let message = "get_in_out_argument_allocation_intructions: no typeinfo for arg" ^ name' in
        let f = Failure message in raise f
      | Some type_info ->
        let may_be_null = arg_may_be_null a in
        match allocate_out_argument_with_default_value type_info name' may_be_null name' with
        | Error message ->
          let message' = Printf.sprintf
              "unable to get type to allocate for \
               argument named %s of type '%s' in function %s"
              name' message name  in
          let f = Failure message' in raise f
        | Ok instructions -> let pattern = container ^ "." in
          Binding_utils.string_pattern_remove instructions pattern
    in
    let args_out_alloc = function
      | [] -> None
      | l ->
        let instructions = List.map (fun a -> get_out_arg_alloc_instructions a) l in
        Some ( String.concat "  " instructions)
    in
    let args_in_out_alloc = function
      | [] -> None
      | l ->
        let instructions = List.map (fun a -> get_in_out_arg_alloc_instructions a) l in
        Some ( String.concat "  " instructions)
    in
    match args_out_alloc args.out_list, args_in_out_alloc args.in_out_list with
    | None, None -> ()
    | Some args_out, None ->
      File.bprintf ml "  %s" args_out
    | None, Some args_in_out ->
      File.bprintf ml "  %s" args_in_out
    | Some args_out, Some args_in_out ->
      File.bprintf ml "  %s  %s" args_out args_in_out

let write_build_return_value_instructions ml name arguments can_throw_gerror ocaml_ret =
  let open Binding_utils in
  match arguments with
  | No_args ->
    if can_throw_gerror then
      File.buff_add_line ml (return_gerror_result ())
  | Args args ->
      let write_get_value_from_pointer_instructions a =
        let name' = get_escaped_arg_name a in
        match get_type_info a with
        | None -> raise (Failure ("write_get_value_from_pointer_instructions: no typeinfo for arg " ^ name'))
        | Some type_info ->
          let may_be_null = arg_may_be_null a in
          match get_out_argument_value type_info name' may_be_null with
          | Error message -> let message' =
                               Printf.sprintf "unable to get instructions to get value \
                                               for argument named %s of type '%s' in function %s"
                                 name' message name in
            raise (Failure message')
          | Ok instructions -> instructions
      in
      let ret = match ocaml_ret with "unit" -> None | _ -> Some ocaml_ret in
      let get_args_out_values = match args.out_list with
        | [] -> None
        | l -> let f a =
            write_get_value_from_pointer_instructions a
          in
          let l' = List.map f l in
          Some (String.concat "  " l')
      in
      let get_args_in_out_values = match args.in_out_list with
        | [] -> None
        | l -> let f a =
            write_get_value_from_pointer_instructions a
          in
          let l' = List.map f l in
          Some (String.concat "  " l')
        in
      let args_out_tuple = escaped_arg_names_to_tuple_form args.out_list in
      let args_in_out_tuple = escaped_arg_names_to_tuple_form args.in_out_list in
      if can_throw_gerror then
        match ret, get_args_out_values, get_args_in_out_values with
        | _, None, None ->
            (* TODO: when it returns void, there is no need to build a (a, b) result type.
             * but this kind of function may not exist. *)
            File.buff_add_line ml (return_gerror_result ())
        | None, Some args_out, None->
          let _ = File.bprintf ml "  let get_ret_value () =\n" in
          let _ = File.bprintf ml "    %s" args_out in
          let _ = File.bprintf ml "    (%s)\n" args_out_tuple in
          let _ = File.buff_add_line ml "  in" in
          File.bprintf ml "%s" (return_gerror_result ~ret:"(get_ret_value ())" ())
        | Some ret, Some args_out, None ->
          let _ = File.bprintf ml "  let get_ret_value () =\n" in
          let _ = File.bprintf ml "    %s" args_out in
          let _ = File.bprintf ml "    (ret, %s)\n" args_out_tuple in
          let _ = File.buff_add_line ml "  in" in
          File.bprintf ml "%s" (return_gerror_result ~ret:"(get_ret_value ())" ())
        | None, None, Some args_in_out ->
          let _ = File.bprintf ml "  let get_ret_value () =\n" in
          let _ = File.bprintf ml "    %s" args_in_out in
          let _ = File.bprintf ml "    (%s)\n" args_in_out_tuple in
          let _ = File.buff_add_line ml "  in" in
          File.bprintf ml "%s" (return_gerror_result ~ret:"(get_ret_value ())" ())
        | Some ret, None, Some args_in_out ->
          let _ = File.bprintf ml "  let get_ret_value () =\n" in
          let _ = File.bprintf ml "    %s" args_in_out in
          let _ = File.bprintf ml "    (ret, %s)\n" args_in_out_tuple in
          let _ = File.buff_add_line ml "  in" in
          File.bprintf ml "%s" (return_gerror_result ~ret:"(get_ret_value ())" ())
        | None, Some args_out, Some args_in_out ->
          let _ = File.bprintf ml "  let get_ret_value () =\n" in
          let _ = File.bprintf ml "    %s" args_out in
          let _ = File.bprintf ml "    %s" args_in_out in
          let _ = File.bprintf ml "    (%s, %s)\n" args_out_tuple args_in_out_tuple in
          let _ = File.buff_add_line ml "  in" in
          File.bprintf ml "%s" (return_gerror_result ~ret:"(get_ret_value ())" ())
        | Some ret, Some args_out, Some args_in_out ->
          let _ = File.bprintf ml "  let get_ret_value () =\n" in
          let _ = File.bprintf ml "    %s" args_out in
          let _ = File.bprintf ml "    %s" args_in_out in
          let _ = File.bprintf ml "    (ret, %s, %s)\n" args_out_tuple args_in_out_tuple in
          let _ = File.buff_add_line ml "  in" in
          File.bprintf ml "%s" (return_gerror_result ~ret:"(get_ret_value ())" ())
      else
        match ret, get_args_out_values, get_args_in_out_values with
        | _, None, None -> ()
        | None, Some args_out, None->
          let _ = File.bprintf ml "  %s" args_out in
          File.bprintf ml "  (%s)\n" args_out_tuple
        | Some ret, Some args_out, None ->
          let _ = File.bprintf ml "  %s" args_out in
          File.bprintf ml "  (ret, %s)\n" args_out_tuple
        | None, None, Some args_in_out ->
          let _ = File.bprintf ml "  %s" args_in_out in
          File.bprintf ml "  (%s)\n" args_in_out_tuple
        | Some ret, None, Some args_in_out ->
          let _ = File.bprintf ml "  %s" args_in_out in
          File.bprintf ml "  (ret, %s)\n" args_in_out_tuple
        | None, Some args_out, Some args_in_out ->
          let _ = File.bprintf ml "  %s" args_out in
          let _ = File.bprintf ml "  %s" args_in_out in
          File.bprintf ml "  (%s, %s)\n" args_out_tuple args_in_out_tuple
        | Some ret, Some args_out, Some args_in_out ->
          let _ = File.bprintf ml "  %s" args_out in
          let _ = File.bprintf ml "  %s" args_in_out in
          File.bprintf ml "  (ret, %s, %s)\n" args_out_tuple args_in_out_tuple

let generate_callable_bindings callable name container symbol arguments ret_types sources =
  let open Binding_utils in
  let name = ensure_valid_variable_name name in
  let mli = Sources.mli sources in
  let ml = Sources.ml sources in
  let (ocaml_ret, ctypes_ret) = List.hd ret_types in
  let can_throw_gerror = Callable_info.can_throw_gerror callable in
  let ocaml_ret' = if ocaml_ret = "string" then "string option" else ocaml_ret in
  let ctypes_ret' = if ctypes_ret = "string" then "string_opt" else ctypes_ret in
  write_mli_signature mli name arguments ocaml_ret' can_throw_gerror;
  write_function_name ml name arguments can_throw_gerror;
  write_foreign_declaration ml name symbol arguments can_throw_gerror ctypes_ret';
  write_allocation_instructions ml name arguments container can_throw_gerror;
  write_compute_value_instructions ml name arguments can_throw_gerror;
  write_build_return_value_instructions ml name arguments can_throw_gerror ocaml_ret

let should_be_implemented args sources symbol =
  let open Binding_utils in
  let get_info_for_non_usable_arg = function
    | Arg _ ->
      let msg = "get_info_for_non_usable_arg: \
                 this should never has been reached" in raise (Failure msg)
    | Not_implemented msg -> msg
    | Skipped msg -> msg
  in
  match has_not_implemented_arg args, has_skipped_arg args with
  | Some arg, _ ->
    let i =  get_info_for_non_usable_arg arg in
    let coms =
      Printf.sprintf "Not implemented %s type %s not implemented" symbol i in
    let _ = Sources.buffs_add_comments sources coms in false
  | None, None -> true
  | None, Some arg ->
      let i =  get_info_for_non_usable_arg arg in
      let coms = Printf.sprintf " %s type %s skipped" symbol i in
      let _ = Sources.buffs_add_skipped sources coms in false

let append_ctypes_function_bindings raw_name info container sources skip_types =
  let open Binding_utils in
  let s = Function_info.get_symbol info in
  let n = ensure_valid_variable_name (if raw_name = "" then s else raw_name) in
  let ci = Function_info.to_callableinfo info in
  let cn = match container with None -> "Core" | Some (n, _ , _) -> n in
  let args = get_args_information ci container skip_types in
  if should_be_implemented args sources s then begin
    match get_return_types ci cn skip_types with
    | Not_handled t ->
      let coms = Printf.sprintf
          "Not implemented %s return type %s not handled" s t in
      Sources.buffs_add_comments sources coms
    | Skipped t ->
      let coms = Printf.sprintf "%s return type %s" s t in
      Sources.buffs_add_skipped sources coms
    | Type_names rt ->
      generate_callable_bindings ci n cn s args rt sources
  end

let parse_function_info info sources skip_types =
  let open Binding_utils in
  match Base_info.get_name info with
  | None -> ()
  | Some n ->
    let i' = Function_info.from_baseinfo info in
    let _ = append_ctypes_function_bindings n i' None sources skip_types in
    let _ = Sources.buffs_add_eol sources in
    Sources.write_buffs sources
