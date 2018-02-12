open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_object_manager_server_new return type object not handled*)
(*Not implemented g_dbus_object_manager_server_export type object not implemented*)
(*Not implemented g_dbus_object_manager_server_export_uniquely type object not implemented*)
(*Not implemented g_dbus_object_manager_server_get_connection return type object not handled*)
(*Not implemented g_dbus_object_manager_server_is_exported type object not implemented*)
(*Not implemented g_dbus_object_manager_server_set_connection type object not implemented*)
let unexport =
  foreign "g_dbus_object_manager_server_unexport" (ptr t_typ @-> string @-> returning (bool))
