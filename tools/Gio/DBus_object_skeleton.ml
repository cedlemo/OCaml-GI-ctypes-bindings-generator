open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_dbus_object_skeleton_new" (string @-> returning (ptr t_typ))
let add_interface =
  foreign "g_dbus_object_skeleton_add_interface" (t_typ @-> ptr DBus_interface_skeleton.t_typ @-> returning (void))
let flush =
  foreign "g_dbus_object_skeleton_flush" (t_typ @-> returning (void))
let remove_interface =
  foreign "g_dbus_object_skeleton_remove_interface" (t_typ @-> ptr DBus_interface_skeleton.t_typ @-> returning (void))
let remove_interface_by_name =
  foreign "g_dbus_object_skeleton_remove_interface_by_name" (t_typ @-> string @-> returning (void))
let set_object_path =
  foreign "g_dbus_object_skeleton_set_object_path" (t_typ @-> string @-> returning (void))
