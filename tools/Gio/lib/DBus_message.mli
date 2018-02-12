open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_message_new return type object not handled*)
(*Not implemented g_dbus_message_new_from_blob type C Array type for Types.Array tag not implemented*)
(*Not implemented g_dbus_message_new_method_call return type object not handled*)
(*Not implemented g_dbus_message_new_signal return type object not handled*)
(*Not implemented g_dbus_message_bytes_needed type C Array type for Types.Array tag not implemented*)
(*Not implemented g_dbus_message_copy return type object not handled*)
val get_arg0:
  t structure ptr -> string option
val get_body:
  t structure ptr -> Variant.t structure ptr
val get_byte_order:
  t structure ptr -> DBus_message_byte_order.t
val get_destination:
  t structure ptr -> string option
val get_error_name:
  t structure ptr -> string option
val get_flags:
  t structure ptr -> DBus_message_flags.t_list
val get_header:
  t structure ptr -> DBus_message_header_field.t -> Variant.t structure ptr
(*Not implemented g_dbus_message_get_header_fields return type C Array type for Types.Array tag not handled*)
val get_interface:
  t structure ptr -> string option
val get_locked:
  t structure ptr -> bool
val get_member:
  t structure ptr -> string option
val get_message_type:
  t structure ptr -> DBus_message_type.t
val get_num_unix_fds:
  t structure ptr -> Unsigned.uint32
val get_path:
  t structure ptr -> string option
val get_reply_serial:
  t structure ptr -> Unsigned.uint32
val get_sender:
  t structure ptr -> string option
val get_serial:
  t structure ptr -> Unsigned.uint32
val get_signature:
  t structure ptr -> string option
(*Not implemented g_dbus_message_get_unix_fd_list return type object not handled*)
val lock:
  t structure ptr -> unit
(*Not implemented g_dbus_message_new_method_error_literal return type object not handled*)
(*Not implemented g_dbus_message_new_method_reply return type object not handled*)
val print:
  t structure ptr -> Unsigned.uint32 -> string option
val set_body:
  t structure ptr -> Variant.t structure ptr -> unit
val set_byte_order:
  t structure ptr -> DBus_message_byte_order.t -> unit
val set_destination:
  t structure ptr -> string -> unit
val set_error_name:
  t structure ptr -> string -> unit
val set_flags:
  t structure ptr -> DBus_message_flags.t_list -> unit
val set_header:
  t structure ptr -> DBus_message_header_field.t -> Variant.t structure ptr option -> unit
val set_interface:
  t structure ptr -> string -> unit
val set_member:
  t structure ptr -> string -> unit
val set_message_type:
  t structure ptr -> DBus_message_type.t -> unit
val set_num_unix_fds:
  t structure ptr -> Unsigned.uint32 -> unit
val set_path:
  t structure ptr -> string -> unit
val set_reply_serial:
  t structure ptr -> Unsigned.uint32 -> unit
val set_sender:
  t structure ptr -> string -> unit
val set_serial:
  t structure ptr -> Unsigned.uint32 -> unit
val set_signature:
  t structure ptr -> string -> unit
(*Not implemented g_dbus_message_set_unix_fd_list type object not implemented*)
(*Not implemented g_dbus_message_to_blob return type C Array type for Types.Array tag not handled*)
val to_gerror:
  t structure ptr -> (bool, Error.t structure ptr option) result
