open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_object_manager_client_new_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_sync type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new_sync type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus type callback not implemented*)
let get_connection =
  foreign "g_dbus_object_manager_client_get_connection" (t_typ @-> returning (ptr DBus_connection.t_typ))
let get_flags =
  foreign "g_dbus_object_manager_client_get_flags" (t_typ @-> returning (DBus_object_manager_client_flags.t_list_view))
let get_name =
  foreign "g_dbus_object_manager_client_get_name" (t_typ @-> returning (string_opt))
let get_name_owner =
  foreign "g_dbus_object_manager_client_get_name_owner" (t_typ @-> returning (string_opt))
