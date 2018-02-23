open Ctypes

type t
val t_typ : t typ

val create:
  Widget.t -> Gesture.t
val get_offset :
  t -> (bool * float * float)
val get_start_point :
  t -> (bool * float * float)
