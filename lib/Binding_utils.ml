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

open GObject_introspection

module Option = struct
  let value ~default value_or_none =
    match value_or_none with
      | None -> default
      | Some v -> v
end

let escape_OCaml_keywords variable_name =
  match variable_name with
  | "and"
  | "as"
  | "asr"
  | "assert"
  | "begin"
  | "class"
  | "constraint"
  | "do"
  | "done"
  | "downto"
  | "else"
  | "end"
  | "exception"
  | "external"
  | "false"
  | "for"
  | "fun"
  | "function"
  | "functor"
  | "if"
  | "in"
  | "include"
  | "inherit"
  | "inherit!"
  | "initializer"
  | "land"
  | "lazy"
  | "let"
  | "lor"
  | "lsl"
  | "lsr"
  | "lxor"
  | "match"
  | "method"
  | "method!"
  | "mod"
  | "module"
  | "mutable"
  | "nonrec"
  | "object"
  | "of"
  | "open"
  | "open!"
  | "or"
  | "private"
  | "rec"
  | "sig"
  | "struct"
  | "then"
  | "to"
  | "true"
  | "try"
  | "type"
  | "val"
  | "val!"
  | "virtual"
  | "when"
  | "while"
  | "with" -> "_" ^ variable_name
  | "new" -> "create"
  | "ref" -> "incr_ref"
  | _ -> variable_name

let has_number_at_beginning variable_name =
  let pattern = Str.regexp "[0-9].*" in
  Str.string_match pattern variable_name 0

let escape_number_at_beginning variable_name =
  if has_number_at_beginning variable_name then "_" ^ variable_name
  else variable_name

let escape_OCaml_types name =
  match name with
  | "int"
  | "float"
  | "list"
  | "string"
  | "char"
  | "array" -> "_" ^ name
  | _ -> name

(* Taken from https://realworldocaml.org/v1/en/html/foreign-function-interface.html. *)
let escape_Ctypes_types name =
  match name with
  | "void"
  | "char"
  | "schar"
  | "short"
  | "int"
  | "long"
  | "llong"
  | "nativeint"
  | "int8_t"
  | "int16_t"
  | "int32_t"
  | "int64_t"
  | "uchar"
  | "uint8_t"
  | "uint16_t"
  | "uint32_t"
  | "uint64_t"
  | "size_t"
  | "ushort"
  | "uint"
  | "ulong"
  | "ullong"
  | "float"
  | "double"
  | "complex32"
  | "complex64" -> "_" ^ name
  | _ -> name

let escape_new_pattern name =
  let pattern = Str.regexp "^new_\\(.*\\)" in
  let name = Str.global_replace pattern "create_\\1" name in
  let pattern = Str.regexp "\\(.*\\)_new$" in
  let name = Str.global_replace pattern "\\1_create" name in
  let pattern = Str.regexp "\\(.*\\)_new_\\(.*\\)" in
  Str.global_replace pattern "\\1_create_\\2" name

let ensure_valid_variable_name name =
  escape_OCaml_keywords name
  |> escape_OCaml_types
  |> escape_Ctypes_types
  |> escape_number_at_beginning
  |> escape_new_pattern

let generate_n_meaningless_arg_names n =
  if n < 0 then ""
  else
    let rec build n acc =
      match n with
      | 0 -> acc
      | _ -> build (n - 1) (("arg" ^ (string_of_int n)) :: acc)
    in
    String.concat " " (build n [])

let get_binding_name info =
  match Base_info.get_name info with
  | None -> None
  | Some name ->
    let bindings_name = Lexer.snake_case name in
    Some bindings_name

let string_pattern_remove str pattern =
  let reg = Str.regexp_string pattern in
  String.concat "" (Str.split reg str)

let match_one_of str patterns =
  let found pattern =
    let r = Str.regexp pattern in
    Str.string_match r str 0
  in
  let rec iterate = function
    | [] -> false
    | hd :: tl -> if found hd then true
                  else iterate tl
  in
  iterate patterns

module File = struct
  type t = {name : string; dest_dir : string; descr : Pervasives.out_channel; buffer : Buffer.t}

  let create dest_dir name =
    let flags = [Open_trunc; Open_append; Open_creat] in
    let perm = 0o666 in
    let path = (dest_dir ^ "/") ^ name in
    let descr = Pervasives.open_out_gen flags perm path in
    let buffer = Buffer.create 16 in
    {name; dest_dir; descr; buffer}

  let create_tmp (name, descr) =
    let buffer = Buffer.create 16 in
    {name; dest_dir = "tmp"; descr; buffer}

  let close t =
    if Sys.file_exists t.name then (
      Pervasives.close_out t.descr;
      Buffer.reset t.buffer)

  let name t =
    t.name

  let descr t =
    t.descr

  let buffer t =
    t.buffer

  let write_open_module t module_name =
    Printf.fprintf t.descr "open %s\n" module_name

  let add_open_ctypes t =
    write_open_module t "Ctypes"

  let add_open_foreign t =
    write_open_module t "Foreign"

  let add_empty_line t =
    Printf.fprintf t.descr "%s" "\n"

  let add_comments t information =
    Printf.fprintf t.descr "(* %s. *)\n" information

  let buff_add t str =
    Buffer.add_string t.buffer str

  let buff_add_line t str =
    Buffer.add_string t.buffer str;
    Buffer.add_string t.buffer "\n"

  let buff_add_comments t str =
    Buffer.add_string t.buffer "(*";
    Buffer.add_string t.buffer str;
    Buffer.add_string t.buffer "*)\n"

  let buff_add_eol t =
    Buffer.add_string t.buffer "\n"

  let bprintf t =
    Printf.bprintf t.buffer

  let buff_write t =
    Buffer.output_buffer t.descr t.buffer;
    Buffer.clear t.buffer
end

module Sources = struct
  type t = {
    ml : File.t;
    mli : File.t;
  }

  let create dest_dir name =
    let ml = File.create dest_dir @@ name ^ ".ml" in
    let mli = File.create dest_dir @@ name ^ ".mli" in
    {ml; mli}

  let create_ctypes dest_dir base_name =
    let sources = create dest_dir base_name in
    let _ = File.add_open_ctypes sources.mli in
    let _ = File.add_empty_line sources.mli in
    let _ = File.add_open_ctypes sources.ml in
    let _ = File.add_open_foreign sources.ml in
    let _ = File.add_empty_line sources.ml in
    sources

  let create_tmp (ml, mli) =
    {ml; mli}

  let ml t =
    t.ml

  let mli t =
    t.mli

  let write_buffs t =
    File.buff_write t.ml;
    File.buff_write t.mli

  let close t =
    let _ = File.close t.mli in
    File.close t.ml

  let buffs_add_comments t str =
    File.buff_add_comments t.mli str;
    File.buff_add_comments t.ml str

  let buffs_add_todo t str =
    let com = "TODO : " ^ str in
    File.buff_add_comments t.mli com;
    File.buff_add_comments t.ml com

  let buffs_add_deprecated t str =
    let com = "DEPRECATED : " ^ str in
    File.buff_add_comments t.mli com;
    File.buff_add_comments t.ml com

  let buffs_add_skipped t str =
    let com = "SKIPPED : " ^ str in
    File.buff_add_comments t.mli com;
    File.buff_add_comments t.ml com

  let buffs_add_eol t =
    File.buff_add_eol t.mli;
    File.buff_add_eol t.ml
end

type type_strings = { ocaml : string;
                      ctypes : string }

type bindings_types = Not_implemented of string | Types of type_strings

let type_tag_to_bindings_types = function
  | Bindings.Types.Void -> Types { ocaml = "unit"; ctypes = "void" }
  | Bindings.Types.Boolean -> Types { ocaml = "bool"; ctypes = "bool"}
  | Bindings.Types.Int8 -> Types { ocaml = "int"; ctypes = "int8_t"}
  | Bindings.Types.Uint8 -> Types { ocaml = "Unsigned.uint8"; ctypes = "uint8_t"}
  | Bindings.Types.Int16 -> Types { ocaml = "int"; ctypes = "int16_t"}
  | Bindings.Types.Uint16 -> Types { ocaml = "Unsigned.uint16"; ctypes = "uint16_t"}
  | Bindings.Types.Int32 -> Types { ocaml = "int32"; ctypes = "int32_t"}
  | Bindings.Types.Uint32 -> Types { ocaml = "Unsigned.uint32"; ctypes = "uint32_t"}
  | Bindings.Types.Int64 -> Types { ocaml = "int64"; ctypes = "int64_t"}
  | Bindings.Types.Uint64 -> Types { ocaml = "Unsigned.uint64"; ctypes = "uint64_t"}
  | Bindings.Types.Float -> Types { ocaml = "float"; ctypes = "float"}
  | Bindings.Types.Double -> Types { ocaml = "float"; ctypes = "double"}
  | Bindings.Types.GType as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.Utf8 as tag-> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.Filename as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.Array as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.Interface as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.GList as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.GSList as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.GHash as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.Error as tag -> Not_implemented (Bindings.Types.string_of_tag tag)
  | Bindings.Types.Unichar as tag -> Not_implemented (Bindings.Types.string_of_tag tag)

(** Used in type_info_to_bindings_types. *)
let check_if_pointer type_info maybe_null (ocaml_t, ctypes_t) =
  if Type_info.is_pointer type_info then
    if maybe_null then {ocaml = ocaml_t ^ " ptr option";
                        ctypes = "ptr_opt " ^ ctypes_t}
    else {ocaml = ocaml_t ^ " ptr";
          ctypes = "ptr " ^ ctypes_t}
  else {ocaml = ocaml_t; ctypes = ctypes_t}

(** Used in type_info_to_bindings_types. When a type is an interface, this
    function generate the bindings of the interface. *)
let interface_to_binding_types interface check_if_pointer type_info =
    let interface_bindings t (ocaml_suffix, ctypes_suffix) =
      match get_binding_name interface with
      | None -> Not_implemented (Bindings.Base_info.string_of_info_type t)
      | Some name ->
      Types (check_if_pointer (name ^ ocaml_suffix, name ^ ctypes_suffix))
    in
    match Base_info.get_type interface with
    | Struct as t -> interface_bindings t (".t structure", ".t_typ")
    | Enum as t-> let suffixes = if  Type_info.is_pointer type_info then
            (".t", ".t_view") else (".t", ".t_view")
        in interface_bindings t suffixes
    | Flags as t -> interface_bindings t (".t_list", ".t_list_view")
    | Object as t -> interface_bindings t (".t", ".t_typ")
    | Boxed | Invalid | Function | Callback | Interface | Constant | Invalid_0
    | Union | Value | Signal | Vfunc | Property | Field | Arg | Type
    | Unresolved as t -> Not_implemented (Bindings.Base_info.string_of_info_type t)

(** This function is used when the type_info analysed describes a type that is
    a container (SList, GList, Hash table or Array) and it returns the types
    for the data that is contained by this container. *)
let get_data_types_of_container type_info =
  let type_info = Type_info.get_param_type type_info in
  match Type_info.get_tag type_info with
  | Bindings.Types.Void -> Types {ocaml = "unit"; ctypes = "void"}
  | Bindings.Types.Boolean -> Types {ocaml = "bool"; ctypes = "bool"}
  | Bindings.Types.Int8 -> Types {ocaml = "int"; ctypes = "int8_t"}
  | Bindings.Types.Uint8 -> Types {ocaml = "Unsigned.uint8"; ctypes = "uint8_t"}
  | Bindings.Types.Int16 -> Types {ocaml = "int"; ctypes = "int16_t"}
  | Bindings.Types.Uint16 -> Types {ocaml = "Unsigned.uint16"; ctypes = "uint16_t"}
  | Bindings.Types.Int32 -> Types {ocaml = "int32"; ctypes = "int32_t"}
  | Bindings.Types.Uint32 -> Types {ocaml = "Unsigned.uint32"; ctypes = "uint32_t"}
  | Bindings.Types.Int64 -> Types {ocaml = "int64"; ctypes = "int64_t"}
  | Bindings.Types.Uint64 -> Types {ocaml = "Unsigned.uint64"; ctypes = "uint64_t"}
  | Bindings.Types.Float -> Types {ocaml = "float"; ctypes = "float"}
  | Bindings.Types.Double -> Types {ocaml = "float"; ctypes = "double"}
  | Bindings.Types.Utf8 | Bindings.Types.Filename -> Types {ocaml = "string"; ctypes = "string"}
  | Bindings.Types.Array | Bindings.Types.GList | Bindings.Types.GSList | Bindings.Types.GHash | Bindings.Types.Error
  | Bindings.Types.Unichar | Bindings.Types.Interface | Bindings.Types.GType as tag ->
    Not_implemented (Bindings.Types.string_of_tag tag)

let rec type_info_to_bindings_types type_info maybe_null =
  let check_if_pointer = check_if_pointer type_info maybe_null in
  let get_full_types_of_container suffix_type =
      let data_type = begin match get_data_types_of_container type_info with
        | Types {ocaml; ctypes} -> ocaml
        | Not_implemented tag -> "Not implemented : "^ tag
      end in
      let container_type = String.concat " " [suffix_type ^ ".t structure"; "(*"; data_type; "*)"] in
      Types (check_if_pointer (container_type, suffix_type ^ ".t_typ"))
  in
  match Type_info.get_interface type_info with
  | None -> (
    match Type_info.get_tag type_info with
    | Bindings.Types.Void -> Types (check_if_pointer ("unit", "void"))
    | Bindings.Types.Boolean -> Types (check_if_pointer ("bool", "bool"))
    | Bindings.Types.Int8 -> Types (check_if_pointer ("int", "int8_t"))
    | Bindings.Types.Uint8 -> Types (check_if_pointer ("Unsigned.uint8", "uint8_t"))
    | Bindings.Types.Int16 -> Types (check_if_pointer ("int", "int16_t"))
    | Bindings.Types.Uint16 -> Types (check_if_pointer ("Unsigned.uint16", "uint16_t"))
    | Bindings.Types.Int32 -> Types (check_if_pointer ("int32", "int32_t"))
    | Bindings.Types.Uint32 -> Types (check_if_pointer ("Unsigned.uint32", "uint32_t"))
    | Bindings.Types.Int64 -> Types (check_if_pointer ("int64", "int64_t"))
    | Bindings.Types.Uint64 -> Types (check_if_pointer ("Unsigned.uint64", "uint64_t"))
    | Bindings.Types.Float -> Types (check_if_pointer ("float", "float"))
    | Bindings.Types.Double -> Types (check_if_pointer ("float", "double"))
    | Bindings.Types.Utf8 | Bindings.Types.Filename ->
      if maybe_null then
        Types {ocaml = "string option"; ctypes = "string_opt"}
      else
        Types {ocaml = "string"; ctypes = "string"}
    | Bindings.Types.Array -> (
      match Type_info.get_array_type type_info with
      | None -> Not_implemented ("Bad Array type for Types.Array tag")
      | Some array_type ->
        match array_type with
        | Bindings.Types.C -> Not_implemented ("C Array type for Types.Array tag")
        | Bindings.Types.Array -> Types (check_if_pointer ("Array.t structure", "Array.t_typ"))
        | Bindings.Types.Ptr_array -> Types (check_if_pointer ("Ptr_array.t structure", "Ptr_array.t_typ"))
        | Bindings.Types.Byte_array -> Types (check_if_pointer ("Byte_array.t structure", "Byte_array.t_typ"))
      )
    | Bindings.Types.GList -> get_full_types_of_container "List"
    | Bindings.Types.GSList -> get_full_types_of_container "SList"
    | Bindings.Types.GHash -> get_full_types_of_container "Hash_table.t"
    | Bindings.Types.Error ->
      Types (check_if_pointer ("Error.t structure", "Error.t_typ"))
    | Bindings.Types.GType | Bindings.Types.Unichar | Bindings.Types.Interface as tag ->
      Not_implemented (Bindings.Types.string_of_tag tag)
    )
  | Some interface ->
    interface_to_binding_types interface check_if_pointer type_info

let allocate_out_argument type_info var_name maybe_null =
  let check_if_pointer (ctypes_t, default_value) =
    (* Consider that a pointer can always be null no need to check for maybe_null. *)
    if Type_info.is_pointer type_info then
      (Printf.sprintf "(ptr_opt %s)" ctypes_t,
       "None")
    else (ctypes_t, default_value)
  in
  let _allocate_simple_instructions (ctypes_type, default_value) =
    let s = Printf.sprintf
            "let %s_ptr = allocate %s %s in\n"
            var_name ctypes_type default_value
    in Ok s
  in
  match Type_info.get_interface type_info with
  | None -> (
    match Type_info.get_tag type_info with
    | Bindings.Types.Void -> check_if_pointer ("void", "None")
                    |> _allocate_simple_instructions
    | Bindings.Types.Boolean -> check_if_pointer ("bool", "false")
                    |> _allocate_simple_instructions
    | Bindings.Types.Int8 -> check_if_pointer ("int8_t", "0")
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint8 -> check_if_pointer ("uint8_t", "Unsigned.UInt8.zero")
                    |> _allocate_simple_instructions
    | Bindings.Types.Int16 -> check_if_pointer ("int16_t", "0")
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint16 -> check_if_pointer ("uint16_t", "Unsigned.UInt16.zero")
                    |> _allocate_simple_instructions
    | Bindings.Types.Int32 -> check_if_pointer ("int32_t", "Int32.zero")
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint32 -> check_if_pointer ("uint32_t", "Unsigned.UInt32.zero")
                    |> _allocate_simple_instructions
    | Bindings.Types.Int64 -> check_if_pointer ("int64_t", "Int64.zero")
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint64 -> check_if_pointer ("uint64_t", "Unsigned.UInt64.zero")
                    |> _allocate_simple_instructions
    | Bindings.Types.Float -> check_if_pointer ("float", "0.0")
                    |> _allocate_simple_instructions
    | Bindings.Types.Double -> check_if_pointer ("double", "0.0")
                    |> _allocate_simple_instructions
    | Bindings.Types.GType -> check_if_pointer ("int64_t", "Int64.zero")
                    |> _allocate_simple_instructions
    | Bindings.Types.Utf8 | Bindings.Types.Filename -> begin
        (if maybe_null then ("string_opt", "None") else ("string", "\" \""))
        |> _allocate_simple_instructions
    end
    | Bindings.Types.Array as t -> Error (Bindings.Types.string_of_tag t)
    | Bindings.Types.Interface as t -> Error (Bindings.Types.string_of_tag t)
    | Bindings.Types.GList -> check_if_pointer ("List.t_typ", "None")
                   |> _allocate_simple_instructions
    | Bindings.Types.GSList -> check_if_pointer ("SList.t_typ", "None")
                   |> _allocate_simple_instructions
    | Bindings.Types.GHash -> check_if_pointer ("Hash_table.t_typ", "None")
                   |> _allocate_simple_instructions
    | Bindings.Types.Error -> check_if_pointer ("Error.t_typ", "None")
                   |> _allocate_simple_instructions
    | Bindings.Types.Unichar as t -> Error (Bindings.Types.string_of_tag t)
    )
  | Some interface ->
      match Base_info.get_type interface with
      | Bindings.Base_info.Struct -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface struct without name" var_name)
        | Some name -> check_if_pointer ((Printf.sprintf "%s.t_typ" name),
                                        (Printf.sprintf "(make %s.t_typ)" name))
                    |> _allocate_simple_instructions
      end
      | Bindings.Base_info.Type -> check_if_pointer ("int64_t", "Int64.zero")
                |> _allocate_simple_instructions
      | Bindings.Base_info.Enum | Bindings.Base_info.Flags -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface enum without name" var_name)
        | Some name -> let enum_info = Enum_info.from_baseinfo interface in
            let view_name = Printf.sprintf "%s.t_view" name in
            let def_val_constructor deflt =
              Printf.sprintf "(%s.of_value (%s))" view_name deflt
            in
            match Enum_info.get_storage_type enum_info with
            | Bindings.Types.Int32 -> _allocate_simple_instructions (view_name, def_val_constructor "Int32.zero")
            | Bindings.Types.Uint32 -> _allocate_simple_instructions (view_name, def_val_constructor "Unsigned.UInt32.zero")
            | _ -> Error (Printf.sprintf "%s interface enum %s with a bad storage type" var_name name)
      end
      | Bindings.Base_info.Object -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface object without name" var_name)
        | Some name -> check_if_pointer ((Printf.sprintf "%s.t_typ" name),
                                        (Printf.sprintf "(coerce (void ptr) %s.t_typ null)" name))
                    |> _allocate_simple_instructions
      end
      | Bindings.Base_info.Invalid as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Function as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Callback as t  -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Boxed as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Interface as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Constant as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Invalid_0 as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Union as t  -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Value as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Signal as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Vfunc as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Property as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Field as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Arg as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Unresolved as t -> Error (Bindings.Base_info.string_of_info_type t)

let allocate_out_argument_with_default_value type_info var_name maybe_null default =
  let check_if_pointer (ctypes_t, default_value) =
    (* Consider that a pointer can always be null no need to check for maybe_null. *)
    if Type_info.is_pointer type_info then
      (Printf.sprintf "(ptr_opt %s)" ctypes_t,
       "None")
    else (ctypes_t, default_value)
  in
  let _allocate_simple_instructions (ctypes_type, default_value) =
    let s = Printf.sprintf
            "let %s_ptr = allocate %s %s in\n"
            var_name ctypes_type default_value
    in Ok s
  in
  match Type_info.get_interface type_info with
  | None -> (
    match Type_info.get_tag type_info with
    | Bindings.Types.Void -> check_if_pointer ("void", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Boolean -> check_if_pointer ("bool", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Int8 -> check_if_pointer ("int8_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint8 -> check_if_pointer ("uint8_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Int16 -> check_if_pointer ("int16_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint16 -> check_if_pointer ("uint16_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Int32 -> check_if_pointer ("int32_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint32 -> check_if_pointer ("uint32_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Int64 -> check_if_pointer ("int64_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Uint64 -> check_if_pointer ("uint64_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Float -> check_if_pointer ("float", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Double -> check_if_pointer ("double", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.GType -> check_if_pointer ("int64_t", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Utf8 | Bindings.Types.Filename -> begin
        (if maybe_null then ("string_opt", default) else ("string", default))
        |> _allocate_simple_instructions
    end
    | Bindings.Types.Array as t -> Error (Bindings.Types.string_of_tag t)
    | Bindings.Types.Interface as t -> Error (Bindings.Types.string_of_tag t)
    | Bindings.Types.GList -> check_if_pointer ("List.t_typ", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.GSList -> check_if_pointer ("SList.t_typ", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.GHash -> check_if_pointer ("Hash_table.t_typ", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Error -> check_if_pointer ("Error.t_typ", default)
                    |> _allocate_simple_instructions
    | Bindings.Types.Unichar as t -> Error (Bindings.Types.string_of_tag t)
    )
  | Some interface ->
      match Base_info.get_type interface with
      | Bindings.Base_info.Struct -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface struct without name" var_name)
        | Some name -> check_if_pointer (Printf.sprintf "%s.t_typ" name,
                                         default)
                    |> _allocate_simple_instructions
      end
      | Bindings.Base_info.Type -> check_if_pointer ("int64_t", default)
                |> _allocate_simple_instructions
      | Bindings.Base_info.Enum | Bindings.Base_info.Flags -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface enum without name" var_name)
        | Some name -> let enum_info = Enum_info.from_baseinfo interface in
            let view_name = Printf.sprintf "%s.t_view" name in
            let _def_val_constructor deflt =
              Printf.sprintf "(%s.of_value (%s))" view_name deflt
            in
            match Enum_info.get_storage_type enum_info with
            | Bindings.Types.Int32 -> _allocate_simple_instructions (view_name, default)
            | Bindings.Types.Uint32 -> _allocate_simple_instructions (view_name, default)
            | _ -> Error (Printf.sprintf "%s interface enum %s with a bad storage type" var_name name)
      end
      | Bindings.Base_info.Object -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface object without name" var_name)
        | Some name -> check_if_pointer (Printf.sprintf "%s.t_typ" name,
                                         default)
                    |> _allocate_simple_instructions
      end
      | Bindings.Base_info.Invalid as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Function as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Callback as t  -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Boxed as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Interface as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Constant as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Invalid_0 as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Union as t  -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Value as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Signal as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Vfunc as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Property as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Field as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Arg as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Unresolved as t -> Error (Bindings.Base_info.string_of_info_type t)

let get_out_argument_value type_info var_name maybe_null =
  let _get_value_simple_instructions () =
    let s = Printf.sprintf "let %s = !@ %s_ptr in\n" var_name var_name
    in Ok s
  in
  let _get_value_enum_instructions name =
    let s =
      Printf.sprintf "let %s = (!@ %s_ptr) in\n" var_name var_name
    in Ok s
  in
  match Type_info.get_interface type_info with
  | None -> (
    match Type_info.get_tag type_info with
    | Bindings.Types.Void | Bindings.Types.Boolean | Bindings.Types.Int8 | Bindings.Types.Uint8 | Bindings.Types.Int16
    | Bindings.Types.Uint16 | Bindings.Types.Int32 | Bindings.Types.Uint32 | Bindings.Types.Int64 | Bindings.Types.Uint64
    | Bindings.Types.Float | Bindings.Types.Double | Bindings.Types.GType | Bindings.Types.Utf8 | Bindings.Types.Filename
    | Bindings.Types.Array | Bindings.Types.Interface | Bindings.Types.GList | Bindings.Types.GSList | Bindings.Types.GHash
    | Bindings.Types.Error -> _get_value_simple_instructions ()
    | Bindings.Types.Unichar as t -> Error (Bindings.Types.string_of_tag t)
    )
  | Some interface ->
      match Base_info.get_type interface with
      | Bindings.Base_info.Struct -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface struct without name" var_name)
        | Some _ -> _get_value_simple_instructions ()
      end
      | Bindings.Base_info.Type -> _get_value_simple_instructions ()
      | Bindings.Base_info.Enum | Bindings.Base_info.Flags -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface enum without name" var_name)
        | Some name -> _get_value_enum_instructions name
      end
      | Bindings.Base_info.Object -> begin match get_binding_name interface with
        | None -> Error (Printf.sprintf "%s interface object without name" var_name)
        | Some _ -> _get_value_simple_instructions ()
      end
      | Bindings.Base_info.Invalid as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Function as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Callback as t  -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Boxed as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Interface as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Constant as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Invalid_0 as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Union as t  -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Value as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Signal as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Vfunc as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Property as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Field as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Arg as t -> Error (Bindings.Base_info.string_of_info_type t)
      | Bindings.Base_info.Unresolved as t -> Error (Bindings.Base_info.string_of_info_type t)
