open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_message_new return type object not handled*)
(*Not implemented g_dbus_message_new_from_blob type C Array type for Types.Array tag not implemented*)
(*Not implemented g_dbus_message_new_method_call return type object not handled*)
(*Not implemented g_dbus_message_new_signal return type object not handled*)
(*Not implemented g_dbus_message_bytes_needed type C Array type for Types.Array tag not implemented*)
(*Not implemented g_dbus_message_copy return type object not handled*)
let get_arg0 =
  foreign "g_dbus_message_get_arg0" (ptr t_typ @-> returning (string_opt))
let get_body =
  foreign "g_dbus_message_get_body" (ptr t_typ @-> returning (ptr Variant.t_typ))
let get_byte_order =
  foreign "g_dbus_message_get_byte_order" (ptr t_typ @-> returning (DBus_message_byte_order.t_view))
let get_destination =
  foreign "g_dbus_message_get_destination" (ptr t_typ @-> returning (string_opt))
let get_error_name =
  foreign "g_dbus_message_get_error_name" (ptr t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_dbus_message_get_flags" (ptr t_typ @-> returning (DBus_message_flags.t_list_view))
let get_header =
  foreign "g_dbus_message_get_header" (ptr t_typ @-> DBus_message_header_field.t_view @-> returning (ptr Variant.t_typ))
(*Not implemented g_dbus_message_get_header_fields return type C Array type for Types.Array tag not handled*)
let get_interface =
  foreign "g_dbus_message_get_interface" (ptr t_typ @-> returning (string_opt))
let get_locked =
  foreign "g_dbus_message_get_locked" (ptr t_typ @-> returning (bool))
let get_member =
  foreign "g_dbus_message_get_member" (ptr t_typ @-> returning (string_opt))
let get_message_type =
  foreign "g_dbus_message_get_message_type" (ptr t_typ @-> returning (DBus_message_type.t_view))
let get_num_unix_fds =
  foreign "g_dbus_message_get_num_unix_fds" (ptr t_typ @-> returning (uint32_t))
let get_path =
  foreign "g_dbus_message_get_path" (ptr t_typ @-> returning (string_opt))
let get_reply_serial =
  foreign "g_dbus_message_get_reply_serial" (ptr t_typ @-> returning (uint32_t))
let get_sender =
  foreign "g_dbus_message_get_sender" (ptr t_typ @-> returning (string_opt))
let get_serial =
  foreign "g_dbus_message_get_serial" (ptr t_typ @-> returning (uint32_t))
let get_signature =
  foreign "g_dbus_message_get_signature" (ptr t_typ @-> returning (string_opt))
(*Not implemented g_dbus_message_get_unix_fd_list return type object not handled*)
let lock =
  foreign "g_dbus_message_lock" (ptr t_typ @-> returning (void))
(*Not implemented g_dbus_message_new_method_error_literal return type object not handled*)
(*Not implemented g_dbus_message_new_method_reply return type object not handled*)
let print =
  foreign "g_dbus_message_print" (ptr t_typ @-> uint32_t @-> returning (string_opt))
let set_body =
  foreign "g_dbus_message_set_body" (ptr t_typ @-> ptr Variant.t_typ @-> returning (void))
let set_byte_order =
  foreign "g_dbus_message_set_byte_order" (ptr t_typ @-> DBus_message_byte_order.t_view @-> returning (void))
let set_destination =
  foreign "g_dbus_message_set_destination" (ptr t_typ @-> string @-> returning (void))
let set_error_name =
  foreign "g_dbus_message_set_error_name" (ptr t_typ @-> string @-> returning (void))
let set_flags =
  foreign "g_dbus_message_set_flags" (ptr t_typ @-> DBus_message_flags.t_list_view @-> returning (void))
let set_header =
  foreign "g_dbus_message_set_header" (ptr t_typ @-> DBus_message_header_field.t_view @-> ptr_opt Variant.t_typ @-> returning (void))
let set_interface =
  foreign "g_dbus_message_set_interface" (ptr t_typ @-> string @-> returning (void))
let set_member =
  foreign "g_dbus_message_set_member" (ptr t_typ @-> string @-> returning (void))
let set_message_type =
  foreign "g_dbus_message_set_message_type" (ptr t_typ @-> DBus_message_type.t_view @-> returning (void))
let set_num_unix_fds =
  foreign "g_dbus_message_set_num_unix_fds" (ptr t_typ @-> uint32_t @-> returning (void))
let set_path =
  foreign "g_dbus_message_set_path" (ptr t_typ @-> string @-> returning (void))
let set_reply_serial =
  foreign "g_dbus_message_set_reply_serial" (ptr t_typ @-> uint32_t @-> returning (void))
let set_sender =
  foreign "g_dbus_message_set_sender" (ptr t_typ @-> string @-> returning (void))
let set_serial =
  foreign "g_dbus_message_set_serial" (ptr t_typ @-> uint32_t @-> returning (void))
let set_signature =
  foreign "g_dbus_message_set_signature" (ptr t_typ @-> string @-> returning (void))
(*Not implemented g_dbus_message_set_unix_fd_list type object not implemented*)
(*Not implemented g_dbus_message_to_blob return type C Array type for Types.Array tag not handled*)
let to_gerror self =
  let to_gerror_raw =
    foreign "g_dbus_message_to_gerror" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = to_gerror_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
