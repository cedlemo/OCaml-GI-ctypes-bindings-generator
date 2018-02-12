open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_object_skeleton_new return type object not handled*)
(*Not implemented g_dbus_object_skeleton_add_interface type object not implemented*)
val flush:
  t structure ptr -> unit
(*Not implemented g_dbus_object_skeleton_remove_interface type object not implemented*)
val remove_interface_by_name:
  t structure ptr -> string -> unit
val set_object_path:
  t structure ptr -> string -> unit
