open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
(*Not implemented g_dbus_message_new_from_blob type C Array type for Types.Array tag not implemented*)
val create_method_call :
  string option -> string -> string option -> string -> t
val create_signal :
  string -> string -> string -> t
(*Not implemented g_dbus_message_bytes_needed type C Array type for Types.Array tag not implemented*)
val copy :
  t -> (t, Error.t structure ptr option) result
val get_arg0 :
  t -> string option
val get_body :
  t -> Variant.t structure ptr
val get_byte_order :
  t -> DBus_message_byte_order.t
val get_destination :
  t -> string option
val get_error_name :
  t -> string option
val get_flags :
  t -> DBus_message_flags.t_list
val get_header :
  t -> DBus_message_header_field.t -> Variant.t structure ptr
(*Not implemented g_dbus_message_get_header_fields return type C Array type for Types.Array tag not handled*)
val get_interface :
  t -> string option
val get_locked :
  t -> bool
val get_member :
  t -> string option
val get_message_type :
  t -> DBus_message_type.t
val get_num_unix_fds :
  t -> Unsigned.uint32
val get_path :
  t -> string option
val get_reply_serial :
  t -> Unsigned.uint32
val get_sender :
  t -> string option
val get_serial :
  t -> Unsigned.uint32
val get_signature :
  t -> string option
val get_unix_fd_list :
  t -> Unix_fdlist.t
val lock :
  t -> unit
val create_method_error_literal :
  t -> string -> string -> t
val create_method_reply :
  t -> t
val print :
  t -> Unsigned.uint32 -> string option
val set_body :
  t -> Variant.t structure ptr -> unit
val set_byte_order :
  t -> DBus_message_byte_order.t -> unit
val set_destination :
  t -> string -> unit
val set_error_name :
  t -> string -> unit
val set_flags :
  t -> DBus_message_flags.t_list -> unit
val set_header :
  t -> DBus_message_header_field.t -> Variant.t structure ptr option -> unit
val set_interface :
  t -> string -> unit
val set_member :
  t -> string -> unit
val set_message_type :
  t -> DBus_message_type.t -> unit
val set_num_unix_fds :
  t -> Unsigned.uint32 -> unit
val set_path :
  t -> string -> unit
val set_reply_serial :
  t -> Unsigned.uint32 -> unit
val set_sender :
  t -> string -> unit
val set_serial :
  t -> Unsigned.uint32 -> unit
val set_signature :
  t -> string -> unit
val set_unix_fd_list :
  t -> Unix_fdlist.t -> unit
(*Not implemented g_dbus_message_to_blob return type C Array type for Types.Array tag not handled*)
val to_gerror :
  t -> (bool, Error.t structure ptr option) result
