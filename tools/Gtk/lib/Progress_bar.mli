open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_progress_bar_new return type object not handled*)
val get_ellipsize:
  t structure ptr -> Ellipsize_mode.t
val get_fraction:
  t structure ptr -> float
val get_inverted:
  t structure ptr -> bool
val get_pulse_step:
  t structure ptr -> float
val get_show_text:
  t structure ptr -> bool
val get_text:
  t structure ptr -> string option
val pulse:
  t structure ptr -> unit
val set_ellipsize:
  t structure ptr -> Ellipsize_mode.t -> unit
val set_fraction:
  t structure ptr -> float -> unit
val set_inverted:
  t structure ptr -> bool -> unit
val set_pulse_step:
  t structure ptr -> float -> unit
val set_show_text:
  t structure ptr -> bool -> unit
val set_text:
  t structure ptr -> string option -> unit
