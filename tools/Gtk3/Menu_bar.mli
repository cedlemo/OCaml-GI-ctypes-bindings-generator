open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_from_model :
  Menu_model.t ptr -> Widget.t ptr
val get_child_pack_direction :
  t -> Pack_direction.t
val get_pack_direction :
  t -> Pack_direction.t
val set_child_pack_direction :
  t -> Pack_direction.t -> unit
val set_pack_direction :
  t -> Pack_direction.t -> unit
