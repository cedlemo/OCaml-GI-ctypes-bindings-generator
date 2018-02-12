open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_object_manager_client_new_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_sync type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new_sync type object not implemented*)
(*Not implemented g_dbus_object_manager_client_new type object not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_get_connection return type object not handled*)
let get_flags =
  foreign "g_dbus_object_manager_client_get_flags" (ptr t_typ @-> returning (DBus_object_manager_client_flags.t_list_view))
let get_name =
  foreign "g_dbus_object_manager_client_get_name" (ptr t_typ @-> returning (string_opt))
let get_name_owner =
  foreign "g_dbus_object_manager_client_get_name_owner" (ptr t_typ @-> returning (string_opt))
