open Ctypes

type t
val t_typ : t typ

val create :
  Widget.t ptr -> Gesture.t ptr
val get_velocity :
  t -> (bool * float * float)
