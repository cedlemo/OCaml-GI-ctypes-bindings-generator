open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_progress_bar_new return type object not handled*)
let get_ellipsize =
  foreign "gtk_progress_bar_get_ellipsize" (ptr t_typ @-> returning (Ellipsize_mode.t_view))
let get_fraction =
  foreign "gtk_progress_bar_get_fraction" (ptr t_typ @-> returning (double))
let get_inverted =
  foreign "gtk_progress_bar_get_inverted" (ptr t_typ @-> returning (bool))
let get_pulse_step =
  foreign "gtk_progress_bar_get_pulse_step" (ptr t_typ @-> returning (double))
let get_show_text =
  foreign "gtk_progress_bar_get_show_text" (ptr t_typ @-> returning (bool))
let get_text =
  foreign "gtk_progress_bar_get_text" (ptr t_typ @-> returning (string_opt))
let pulse =
  foreign "gtk_progress_bar_pulse" (ptr t_typ @-> returning (void))
let set_ellipsize =
  foreign "gtk_progress_bar_set_ellipsize" (ptr t_typ @-> Ellipsize_mode.t_view @-> returning (void))
let set_fraction =
  foreign "gtk_progress_bar_set_fraction" (ptr t_typ @-> double @-> returning (void))
let set_inverted =
  foreign "gtk_progress_bar_set_inverted" (ptr t_typ @-> bool @-> returning (void))
let set_pulse_step =
  foreign "gtk_progress_bar_set_pulse_step" (ptr t_typ @-> double @-> returning (void))
let set_show_text =
  foreign "gtk_progress_bar_set_show_text" (ptr t_typ @-> bool @-> returning (void))
let set_text =
  foreign "gtk_progress_bar_set_text" (ptr t_typ @-> string_opt @-> returning (void))
