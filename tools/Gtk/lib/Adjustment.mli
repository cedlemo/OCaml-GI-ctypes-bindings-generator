open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_adjustment_new return type object not handled*)
val changed:
  t structure ptr -> unit
val clamp_page:
  t structure ptr -> float -> float -> unit
val configure:
  t structure ptr -> float -> float -> float -> float -> float -> float -> unit
val get_lower:
  t structure ptr -> float
val get_minimum_increment:
  t structure ptr -> float
val get_page_increment:
  t structure ptr -> float
val get_page_size:
  t structure ptr -> float
val get_step_increment:
  t structure ptr -> float
val get_upper:
  t structure ptr -> float
val get_value:
  t structure ptr -> float
val set_lower:
  t structure ptr -> float -> unit
val set_page_increment:
  t structure ptr -> float -> unit
val set_page_size:
  t structure ptr -> float -> unit
val set_step_increment:
  t structure ptr -> float -> unit
val set_upper:
  t structure ptr -> float -> unit
val set_value:
  t structure ptr -> float -> unit
val value_changed:
  t structure ptr -> unit
