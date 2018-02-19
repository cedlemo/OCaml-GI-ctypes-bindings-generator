open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_gesture_pan_new type object not implemented*)
val get_orientation:
  t structure ptr -> Orientation.t
val set_orientation:
  t structure ptr -> Orientation.t -> unit
