open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_interface_skeleton_export type object not implemented*)
val flush:
  t structure ptr -> unit
(*Not implemented g_dbus_interface_skeleton_get_connection return type object not handled*)
val get_connections:
  t structure ptr -> List.t structure ptr
val get_flags:
  t structure ptr -> DBus_interface_skeleton_flags.t_list
val get_info:
  t structure ptr -> DBus_interface_info.t structure ptr
val get_object_path:
  t structure ptr -> string option
val get_properties:
  t structure ptr -> Variant.t structure ptr
(*Not implemented g_dbus_interface_skeleton_has_connection type object not implemented*)
val set_flags:
  t structure ptr -> DBus_interface_skeleton_flags.t_list -> unit
val unexport:
  t structure ptr -> unit
(*Not implemented g_dbus_interface_skeleton_unexport_from_connection type object not implemented*)
