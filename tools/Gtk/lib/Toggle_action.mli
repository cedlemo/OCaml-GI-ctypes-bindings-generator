open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_toggle_action_new return type object not handled*)
val get_active:
  t structure ptr -> bool
val get_draw_as_radio:
  t structure ptr -> bool
val set_active:
  t structure ptr -> bool -> unit
val set_draw_as_radio:
  t structure ptr -> bool -> unit
val toggled:
  t structure ptr -> unit
