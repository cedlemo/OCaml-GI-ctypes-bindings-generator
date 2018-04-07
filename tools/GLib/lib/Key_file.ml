open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Key_file"

let create =
  foreign "g_key_file_new" (void @-> returning (ptr t_typ))
let get_boolean self group_name key =
  let get_boolean_raw =
    foreign "g_key_file_get_boolean" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_boolean_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_key_file_get_boolean_list return type C Array type for Types.Array tag not handled*)
let get_comment self group_name key =
  let get_comment_raw =
    foreign "g_key_file_get_comment" (ptr t_typ @-> string_opt @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_comment_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_double self group_name key =
  let get_double_raw =
    foreign "g_key_file_get_double" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (double))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_double_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_key_file_get_double_list return type C Array type for Types.Array tag not handled*)
(*Not implemented g_key_file_get_groups return type C Array type for Types.Array tag not handled*)
let get_int64 self group_name key =
  let get_int64_raw =
    foreign "g_key_file_get_int64" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_int64_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_integer self group_name key =
  let get_integer_raw =
    foreign "g_key_file_get_integer" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_integer_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_key_file_get_integer_list return type C Array type for Types.Array tag not handled*)
(*Not implemented g_key_file_get_keys return type C Array type for Types.Array tag not handled*)
let get_locale_string self group_name key locale =
  let get_locale_string_raw =
    foreign "g_key_file_get_locale_string" (ptr t_typ @-> string @-> string @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_locale_string_raw self group_name key locale err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_key_file_get_locale_string_list return type C Array type for Types.Array tag not handled*)
let get_start_group =
  foreign "g_key_file_get_start_group" (ptr t_typ @-> returning (string_opt))
let get_string self group_name key =
  let get_string_raw =
    foreign "g_key_file_get_string" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_string_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_key_file_get_string_list return type C Array type for Types.Array tag not handled*)
let get_uint64 self group_name key =
  let get_uint64_raw =
    foreign "g_key_file_get_uint64" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (uint64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_uint64_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_value self group_name key =
  let get_value_raw =
    foreign "g_key_file_get_value" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_value_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let has_group =
  foreign "g_key_file_has_group" (ptr t_typ @-> string @-> returning (bool))
(*SKIPPED :  g_key_file_load_from_bytes type Bytes.t structure ptr skipped*)
let load_from_data self data length flags =
  let load_from_data_raw =
    foreign "g_key_file_load_from_data" (ptr t_typ @-> string @-> uint64_t @-> Key_file_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_from_data_raw self data length flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_from_data_dirs self file flags =
  let load_from_data_dirs_raw =
    foreign "g_key_file_load_from_data_dirs" (ptr t_typ @-> string @-> Key_file_flags.t_list_view @-> ptr (string) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let full_path_ptr = allocate string " " in
  let ret = load_from_data_dirs_raw self file flags full_path_ptr err_ptr_ptr in
  let get_ret_value () =
    let full_path = !@ full_path_ptr in
    (ret, full_path)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_key_file_load_from_dirs type C Array type for Types.Array tag not implemented*)
let load_from_file self file flags =
  let load_from_file_raw =
    foreign "g_key_file_load_from_file" (ptr t_typ @-> string @-> Key_file_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_from_file_raw self file flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let remove_comment self group_name key =
  let remove_comment_raw =
    foreign "g_key_file_remove_comment" (ptr t_typ @-> string_opt @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = remove_comment_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let remove_group self group_name =
  let remove_group_raw =
    foreign "g_key_file_remove_group" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = remove_group_raw self group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let remove_key self group_name key =
  let remove_key_raw =
    foreign "g_key_file_remove_key" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = remove_key_raw self group_name key err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let save_to_file self filename =
  let save_to_file_raw =
    foreign "g_key_file_save_to_file" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = save_to_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_boolean =
  foreign "g_key_file_set_boolean" (ptr t_typ @-> string @-> string @-> bool @-> returning (void))
(*Not implemented g_key_file_set_boolean_list type C Array type for Types.Array tag not implemented*)
let set_comment self group_name key comment =
  let set_comment_raw =
    foreign "g_key_file_set_comment" (ptr t_typ @-> string_opt @-> string_opt @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_comment_raw self group_name key comment err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_double =
  foreign "g_key_file_set_double" (ptr t_typ @-> string @-> string @-> double @-> returning (void))
(*Not implemented g_key_file_set_double_list type C Array type for Types.Array tag not implemented*)
let set_int64 =
  foreign "g_key_file_set_int64" (ptr t_typ @-> string @-> string @-> int64_t @-> returning (void))
let set_integer =
  foreign "g_key_file_set_integer" (ptr t_typ @-> string @-> string @-> int32_t @-> returning (void))
(*Not implemented g_key_file_set_integer_list type C Array type for Types.Array tag not implemented*)
let set_list_separator =
  foreign "g_key_file_set_list_separator" (ptr t_typ @-> int8_t @-> returning (void))
let set_locale_string =
  foreign "g_key_file_set_locale_string" (ptr t_typ @-> string @-> string @-> string @-> string @-> returning (void))
(*Not implemented g_key_file_set_locale_string_list type C Array type for Types.Array tag not implemented*)
let set_string =
  foreign "g_key_file_set_string" (ptr t_typ @-> string @-> string @-> string @-> returning (void))
(*Not implemented g_key_file_set_string_list type C Array type for Types.Array tag not implemented*)
let set_uint64 =
  foreign "g_key_file_set_uint64" (ptr t_typ @-> string @-> string @-> uint64_t @-> returning (void))
let set_value =
  foreign "g_key_file_set_value" (ptr t_typ @-> string @-> string @-> string @-> returning (void))
let to_data self =
  let to_data_raw =
    foreign "g_key_file_to_data" (ptr t_typ @-> ptr (uint64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let length_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = to_data_raw self length_ptr err_ptr_ptr in
  let get_ret_value () =
    let length = !@ length_ptr in
    (ret, length)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let unref =
  foreign "g_key_file_unref" (ptr t_typ @-> returning (void))
let error_quark =
  foreign "g_key_file_error_quark" (void @-> returning (uint32_t))
