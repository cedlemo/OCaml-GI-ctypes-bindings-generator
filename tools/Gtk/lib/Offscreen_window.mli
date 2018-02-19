open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_offscreen_window_new return type object not handled*)
(*Not implemented gtk_offscreen_window_get_pixbuf return type object not handled*)
val get_surface:
  t structure ptr -> Surface.t structure ptr option
