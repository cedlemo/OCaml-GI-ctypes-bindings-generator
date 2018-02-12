open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_proxy_new_finish type interface not implemented*)
(*Not implemented g_dbus_proxy_new_for_bus_finish type interface not implemented*)
(*Not implemented g_dbus_proxy_new_for_bus_sync type object not implemented*)
(*Not implemented g_dbus_proxy_new_sync type object not implemented*)
(*Not implemented g_dbus_proxy_new type object not implemented*)
(*Not implemented g_dbus_proxy_new_for_bus type object not implemented*)
(*Not implemented g_dbus_proxy_call type object not implemented*)
(*Not implemented g_dbus_proxy_call_finish type interface not implemented*)
(*Not implemented g_dbus_proxy_call_sync type object not implemented*)
(*Not implemented g_dbus_proxy_call_with_unix_fd_list type object not implemented*)
(*Not implemented g_dbus_proxy_call_with_unix_fd_list_finish type interface not implemented*)
(*Not implemented g_dbus_proxy_call_with_unix_fd_list_sync type object not implemented*)
val get_cached_property:
  t structure ptr -> string -> Variant.t structure ptr
(*Not implemented g_dbus_proxy_get_cached_property_names return type C Array type for Types.Array tag not handled*)
(*Not implemented g_dbus_proxy_get_connection return type object not handled*)
val get_default_timeout:
  t structure ptr -> int32
val get_flags:
  t structure ptr -> DBus_proxy_flags.t_list
val get_interface_info:
  t structure ptr -> DBus_interface_info.t structure ptr
val get_interface_name:
  t structure ptr -> string option
val get_name:
  t structure ptr -> string option
val get_name_owner:
  t structure ptr -> string option
val get_object_path:
  t structure ptr -> string option
val set_cached_property:
  t structure ptr -> string -> Variant.t structure ptr option -> unit
val set_default_timeout:
  t structure ptr -> int32 -> unit
val set_interface_info:
  t structure ptr -> DBus_interface_info.t structure ptr option -> unit
