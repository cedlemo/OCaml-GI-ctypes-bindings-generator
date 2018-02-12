open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_object_manager_server_new return type object not handled*)
(*Not implemented g_dbus_object_manager_server_export type object not implemented*)
(*Not implemented g_dbus_object_manager_server_export_uniquely type object not implemented*)
(*Not implemented g_dbus_object_manager_server_get_connection return type object not handled*)
(*Not implemented g_dbus_object_manager_server_is_exported type object not implemented*)
(*Not implemented g_dbus_object_manager_server_set_connection type object not implemented*)
val unexport:
  t structure ptr -> string -> bool
