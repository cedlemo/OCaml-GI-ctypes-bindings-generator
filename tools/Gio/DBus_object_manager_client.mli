open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_object_manager_client_new_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_finish type interface not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus_sync type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new_sync type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new type callback not implemented*)
(*Not implemented g_dbus_object_manager_client_new_for_bus type callback not implemented*)
val get_connection :
  t -> DBus_connection.t ptr
val get_flags :
  t -> DBus_object_manager_client_flags.t_list
val get_name :
  t -> string option
val get_name_owner :
  t -> string option
