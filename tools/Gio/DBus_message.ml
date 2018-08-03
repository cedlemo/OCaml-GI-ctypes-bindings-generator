open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_dbus_message_new" (void @-> returning (ptr t_typ))
(*Not implemented g_dbus_message_new_from_blob type C Array type for Types.Array tag not implemented*)
let create_method_call =
  foreign "g_dbus_message_new_method_call" (string_opt @-> string @-> string_opt @-> string @-> returning (ptr t_typ))
let create_signal =
  foreign "g_dbus_message_new_signal" (string @-> string @-> string @-> returning (ptr t_typ))
(*Not implemented g_dbus_message_bytes_needed type C Array type for Types.Array tag not implemented*)
let copy self =
  let copy_raw =
    foreign "g_dbus_message_copy" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = copy_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_arg0 =
  foreign "g_dbus_message_get_arg0" (t_typ @-> returning (string_opt))
let get_body =
  foreign "g_dbus_message_get_body" (t_typ @-> returning (ptr Variant.t_typ))
let get_byte_order =
  foreign "g_dbus_message_get_byte_order" (t_typ @-> returning (DBus_message_byte_order.t_view))
let get_destination =
  foreign "g_dbus_message_get_destination" (t_typ @-> returning (string_opt))
let get_error_name =
  foreign "g_dbus_message_get_error_name" (t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_dbus_message_get_flags" (t_typ @-> returning (DBus_message_flags.t_list_view))
let get_header =
  foreign "g_dbus_message_get_header" (t_typ @-> DBus_message_header_field.t_view @-> returning (ptr Variant.t_typ))
(*Not implemented g_dbus_message_get_header_fields return type C Array type for Types.Array tag not handled*)
let get_interface =
  foreign "g_dbus_message_get_interface" (t_typ @-> returning (string_opt))
let get_locked =
  foreign "g_dbus_message_get_locked" (t_typ @-> returning (bool))
let get_member =
  foreign "g_dbus_message_get_member" (t_typ @-> returning (string_opt))
let get_message_type =
  foreign "g_dbus_message_get_message_type" (t_typ @-> returning (DBus_message_type.t_view))
let get_num_unix_fds =
  foreign "g_dbus_message_get_num_unix_fds" (t_typ @-> returning (uint32_t))
let get_path =
  foreign "g_dbus_message_get_path" (t_typ @-> returning (string_opt))
let get_reply_serial =
  foreign "g_dbus_message_get_reply_serial" (t_typ @-> returning (uint32_t))
let get_sender =
  foreign "g_dbus_message_get_sender" (t_typ @-> returning (string_opt))
let get_serial =
  foreign "g_dbus_message_get_serial" (t_typ @-> returning (uint32_t))
let get_signature =
  foreign "g_dbus_message_get_signature" (t_typ @-> returning (string_opt))
let get_unix_fd_list =
  foreign "g_dbus_message_get_unix_fd_list" (t_typ @-> returning (ptr Unix_fdlist.t_typ))
let lock =
  foreign "g_dbus_message_lock" (t_typ @-> returning (void))
let create_method_error_literal =
  foreign "g_dbus_message_new_method_error_literal" (t_typ @-> string @-> string @-> returning (ptr t_typ))
let create_method_reply =
  foreign "g_dbus_message_new_method_reply" (t_typ @-> returning (ptr t_typ))
let print =
  foreign "g_dbus_message_print" (t_typ @-> uint32_t @-> returning (string_opt))
let set_body =
  foreign "g_dbus_message_set_body" (t_typ @-> ptr Variant.t_typ @-> returning (void))
let set_byte_order =
  foreign "g_dbus_message_set_byte_order" (t_typ @-> DBus_message_byte_order.t_view @-> returning (void))
let set_destination =
  foreign "g_dbus_message_set_destination" (t_typ @-> string @-> returning (void))
let set_error_name =
  foreign "g_dbus_message_set_error_name" (t_typ @-> string @-> returning (void))
let set_flags =
  foreign "g_dbus_message_set_flags" (t_typ @-> DBus_message_flags.t_list_view @-> returning (void))
let set_header =
  foreign "g_dbus_message_set_header" (t_typ @-> DBus_message_header_field.t_view @-> ptr_opt Variant.t_typ @-> returning (void))
let set_interface =
  foreign "g_dbus_message_set_interface" (t_typ @-> string @-> returning (void))
let set_member =
  foreign "g_dbus_message_set_member" (t_typ @-> string @-> returning (void))
let set_message_type =
  foreign "g_dbus_message_set_message_type" (t_typ @-> DBus_message_type.t_view @-> returning (void))
let set_num_unix_fds =
  foreign "g_dbus_message_set_num_unix_fds" (t_typ @-> uint32_t @-> returning (void))
let set_path =
  foreign "g_dbus_message_set_path" (t_typ @-> string @-> returning (void))
let set_reply_serial =
  foreign "g_dbus_message_set_reply_serial" (t_typ @-> uint32_t @-> returning (void))
let set_sender =
  foreign "g_dbus_message_set_sender" (t_typ @-> string @-> returning (void))
let set_serial =
  foreign "g_dbus_message_set_serial" (t_typ @-> uint32_t @-> returning (void))
let set_signature =
  foreign "g_dbus_message_set_signature" (t_typ @-> string @-> returning (void))
let set_unix_fd_list =
  foreign "g_dbus_message_set_unix_fd_list" (t_typ @-> ptr_opt Unix_fdlist.t_typ @-> returning (void))
(*Not implemented g_dbus_message_to_blob return type C Array type for Types.Array tag not handled*)
let to_gerror self =
  let to_gerror_raw =
    foreign "g_dbus_message_to_gerror" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = to_gerror_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
