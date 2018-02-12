open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_interface_skeleton_export type object not implemented*)
let flush =
  foreign "g_dbus_interface_skeleton_flush" (ptr t_typ @-> returning (void))
(*Not implemented g_dbus_interface_skeleton_get_connection return type object not handled*)
let get_connections =
  foreign "g_dbus_interface_skeleton_get_connections" (ptr t_typ @-> returning (ptr List.t_typ))
let get_flags =
  foreign "g_dbus_interface_skeleton_get_flags" (ptr t_typ @-> returning (DBus_interface_skeleton_flags.t_list_view))
let get_info =
  foreign "g_dbus_interface_skeleton_get_info" (ptr t_typ @-> returning (ptr DBus_interface_info.t_typ))
let get_object_path =
  foreign "g_dbus_interface_skeleton_get_object_path" (ptr t_typ @-> returning (string_opt))
let get_properties =
  foreign "g_dbus_interface_skeleton_get_properties" (ptr t_typ @-> returning (ptr Variant.t_typ))
(*Not implemented g_dbus_interface_skeleton_has_connection type object not implemented*)
let set_flags =
  foreign "g_dbus_interface_skeleton_set_flags" (ptr t_typ @-> DBus_interface_skeleton_flags.t_list_view @-> returning (void))
let unexport =
  foreign "g_dbus_interface_skeleton_unexport" (ptr t_typ @-> returning (void))
(*Not implemented g_dbus_interface_skeleton_unexport_from_connection type object not implemented*)
