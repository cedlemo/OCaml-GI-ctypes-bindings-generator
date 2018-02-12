open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_object_skeleton_new return type object not handled*)
(*Not implemented g_dbus_object_skeleton_add_interface type object not implemented*)
let flush =
  foreign "g_dbus_object_skeleton_flush" (ptr t_typ @-> returning (void))
(*Not implemented g_dbus_object_skeleton_remove_interface type object not implemented*)
let remove_interface_by_name =
  foreign "g_dbus_object_skeleton_remove_interface_by_name" (ptr t_typ @-> string @-> returning (void))
let set_object_path =
  foreign "g_dbus_object_skeleton_set_object_path" (ptr t_typ @-> string @-> returning (void))
