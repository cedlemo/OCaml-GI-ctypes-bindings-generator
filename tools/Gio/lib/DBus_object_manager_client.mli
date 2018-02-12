open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_object_manager_client_new_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_sync type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new_sync type object not implemented*)
(*Not implemented g_dbus_object_manager_client_new type object not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_get_connection return type object not handled*)
val get_flags:
  t structure ptr -> DBus_object_manager_client_flags.t_list
val get_name:
  t structure ptr -> string option
val get_name_owner:
  t structure ptr -> string option
