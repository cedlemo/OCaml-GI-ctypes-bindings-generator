open Ctypes

type t
val t_typ : t typ

val create :
  Widget.t -> Orientation.t -> Gesture.t
val get_orientation :
  t -> Orientation.t
val set_orientation :
  t -> Orientation.t -> unit
