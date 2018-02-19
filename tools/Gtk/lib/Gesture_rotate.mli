open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_gesture_rotate_new type object not implemented*)
val get_angle_delta:
  t structure ptr -> float
