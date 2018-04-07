open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_dbus_object_manager_server_new" (string @-> returning (t_typ))
let export =
  foreign "g_dbus_object_manager_server_export" (t_typ @-> DBus_object_skeleton.t_typ @-> returning (void))
let export_uniquely =
  foreign "g_dbus_object_manager_server_export_uniquely" (t_typ @-> DBus_object_skeleton.t_typ @-> returning (void))
let get_connection =
  foreign "g_dbus_object_manager_server_get_connection" (t_typ @-> returning (DBus_connection.t_typ))
let is_exported =
  foreign "g_dbus_object_manager_server_is_exported" (t_typ @-> DBus_object_skeleton.t_typ @-> returning (bool))
let set_connection =
  foreign "g_dbus_object_manager_server_set_connection" (t_typ @-> DBus_connection.t_typ @-> returning (void))
let unexport =
  foreign "g_dbus_object_manager_server_unexport" (t_typ @-> string @-> returning (bool))
