open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_progress_bar_new" (void @-> returning (ptr Widget.t_typ))
let get_ellipsize =
  foreign "gtk_progress_bar_get_ellipsize" (t_typ @-> returning (Ellipsize_mode.t_view))
let get_fraction =
  foreign "gtk_progress_bar_get_fraction" (t_typ @-> returning (double))
let get_inverted =
  foreign "gtk_progress_bar_get_inverted" (t_typ @-> returning (bool))
let get_pulse_step =
  foreign "gtk_progress_bar_get_pulse_step" (t_typ @-> returning (double))
let get_show_text =
  foreign "gtk_progress_bar_get_show_text" (t_typ @-> returning (bool))
let get_text =
  foreign "gtk_progress_bar_get_text" (t_typ @-> returning (string_opt))
let pulse =
  foreign "gtk_progress_bar_pulse" (t_typ @-> returning (void))
let set_ellipsize =
  foreign "gtk_progress_bar_set_ellipsize" (t_typ @-> Ellipsize_mode.t_view @-> returning (void))
let set_fraction =
  foreign "gtk_progress_bar_set_fraction" (t_typ @-> double @-> returning (void))
let set_inverted =
  foreign "gtk_progress_bar_set_inverted" (t_typ @-> bool @-> returning (void))
let set_pulse_step =
  foreign "gtk_progress_bar_set_pulse_step" (t_typ @-> double @-> returning (void))
let set_show_text =
  foreign "gtk_progress_bar_set_show_text" (t_typ @-> bool @-> returning (void))
let set_text =
  foreign "gtk_progress_bar_set_text" (t_typ @-> string_opt @-> returning (void))
