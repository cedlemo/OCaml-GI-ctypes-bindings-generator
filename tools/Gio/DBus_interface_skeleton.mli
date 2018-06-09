open Ctypes

type t
val t_typ : t typ

val export :
  t -> DBus_connection.t -> string -> (bool, Error.t structure ptr option) result
val flush :
  t -> unit
val get_connection :
  t -> DBus_connection.t
val get_connections :
  t -> List.t structure ptr
val get_flags :
  t -> DBus_interface_skeleton_flags.t_list
val get_info :
  t -> DBus_interface_info.t structure ptr
val get_object_path :
  t -> string option
val get_properties :
  t -> Variant.t structure ptr
val has_connection :
  t -> DBus_connection.t -> bool
val set_flags :
  t -> DBus_interface_skeleton_flags.t_list -> unit
val unexport :
  t -> unit
val unexport_from_connection :
  t -> DBus_connection.t -> unit
