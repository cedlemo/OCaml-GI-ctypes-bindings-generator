open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_gesture_multi_press_new type object not implemented*)
val get_area :
  t structure ptr -> (bool * Rectangle.t structure)
val set_area:
  t structure ptr -> Rectangle.t structure ptr option -> unit
