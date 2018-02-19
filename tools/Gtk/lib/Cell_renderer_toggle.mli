open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_cell_renderer_toggle_new return type object not handled*)
val get_activatable:
  t structure ptr -> bool
val get_active:
  t structure ptr -> bool
val get_radio:
  t structure ptr -> bool
val set_activatable:
  t structure ptr -> bool -> unit
val set_active:
  t structure ptr -> bool -> unit
val set_radio:
  t structure ptr -> bool -> unit
