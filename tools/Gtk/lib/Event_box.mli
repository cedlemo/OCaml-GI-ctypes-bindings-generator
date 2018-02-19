open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_event_box_new return type object not handled*)
val get_above_child:
  t structure ptr -> bool
val get_visible_window:
  t structure ptr -> bool
val set_above_child:
  t structure ptr -> bool -> unit
val set_visible_window:
  t structure ptr -> bool -> unit
