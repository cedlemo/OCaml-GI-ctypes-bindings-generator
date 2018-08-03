open Ctypes

type t
val t_typ : t typ

val create :
  string -> t ptr
val add_interface :
  t -> DBus_interface_skeleton.t ptr -> unit
val flush :
  t -> unit
val remove_interface :
  t -> DBus_interface_skeleton.t ptr -> unit
val remove_interface_by_name :
  t -> string -> unit
val set_object_path :
  t -> string -> unit
