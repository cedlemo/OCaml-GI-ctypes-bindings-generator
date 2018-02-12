open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

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
let get_cached_property =
  foreign "g_dbus_proxy_get_cached_property" (ptr t_typ @-> string @-> returning (ptr Variant.t_typ))
(*Not implemented g_dbus_proxy_get_cached_property_names return type C Array type for Types.Array tag not handled*)
(*Not implemented g_dbus_proxy_get_connection return type object not handled*)
let get_default_timeout =
  foreign "g_dbus_proxy_get_default_timeout" (ptr t_typ @-> returning (int32_t))
let get_flags =
  foreign "g_dbus_proxy_get_flags" (ptr t_typ @-> returning (DBus_proxy_flags.t_list_view))
let get_interface_info =
  foreign "g_dbus_proxy_get_interface_info" (ptr t_typ @-> returning (ptr DBus_interface_info.t_typ))
let get_interface_name =
  foreign "g_dbus_proxy_get_interface_name" (ptr t_typ @-> returning (string_opt))
let get_name =
  foreign "g_dbus_proxy_get_name" (ptr t_typ @-> returning (string_opt))
let get_name_owner =
  foreign "g_dbus_proxy_get_name_owner" (ptr t_typ @-> returning (string_opt))
let get_object_path =
  foreign "g_dbus_proxy_get_object_path" (ptr t_typ @-> returning (string_opt))
let set_cached_property =
  foreign "g_dbus_proxy_set_cached_property" (ptr t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let set_default_timeout =
  foreign "g_dbus_proxy_set_default_timeout" (ptr t_typ @-> int32_t @-> returning (void))
let set_interface_info =
  foreign "g_dbus_proxy_set_interface_info" (ptr t_typ @-> ptr_opt DBus_interface_info.t_typ @-> returning (void))
