open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_gesture_drag_new type object not implemented*)
val get_offset :
  t structure ptr -> (bool * float * float)
val get_start_point :
  t structure ptr -> (bool * float * float)
