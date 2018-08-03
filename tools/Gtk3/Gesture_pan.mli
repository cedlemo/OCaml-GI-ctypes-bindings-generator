open Ctypes

type t
val t_typ : t typ

val create :
  Widget.t ptr -> Orientation.t -> Gesture.t ptr
val get_orientation :
  t -> Orientation.t
val set_orientation :
  t -> Orientation.t -> unit
