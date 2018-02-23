open Ctypes

type t
val t_typ : t typ

val create:
  Widget.t -> Gesture.t
val get_velocity :
  t -> (bool * float * float)
