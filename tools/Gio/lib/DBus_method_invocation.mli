open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_method_invocation_get_connection return type object not handled*)
val get_interface_name:
  t structure ptr -> string option
(*Not implemented g_dbus_method_invocation_get_message return type object not handled*)
val get_method_info:
  t structure ptr -> DBus_method_info.t structure ptr
val get_method_name:
  t structure ptr -> string option
val get_object_path:
  t structure ptr -> string option
val get_parameters:
  t structure ptr -> Variant.t structure ptr
val get_property_info:
  t structure ptr -> DBus_property_info.t structure ptr
val get_sender:
  t structure ptr -> string option
val return_dbus_error:
  t structure ptr -> string -> string -> unit
val return_error_literal:
  t structure ptr -> Unsigned.uint32 -> int32 -> string -> unit
val return_gerror:
  t structure ptr -> Error.t structure ptr -> unit
val return_value:
  t structure ptr -> Variant.t structure ptr option -> unit
(*Not implemented g_dbus_method_invocation_return_value_with_unix_fd_list type object not implemented*)
