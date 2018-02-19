open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_gesture_swipe_new type object not implemented*)
val get_velocity :
  t structure ptr -> (bool * float * float)
