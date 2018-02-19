open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_offscreen_window_new return type object not handled*)
(*Not implemented gtk_offscreen_window_get_pixbuf return type object not handled*)
let get_surface =
  foreign "gtk_offscreen_window_get_surface" (ptr t_typ @-> returning (ptr_opt Surface.t_typ))
