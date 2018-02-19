open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_gesture_zoom_new type object not implemented*)
val get_scale_delta:
  t structure ptr -> float
