open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_offscreen_window_new" (void @-> returning (Widget.t_typ))
let get_pixbuf =
  foreign "gtk_offscreen_window_get_pixbuf" (t_typ @-> returning (Pixbuf.t_typ))
let get_surface =
  foreign "gtk_offscreen_window_get_surface" (t_typ @-> returning (ptr_opt Surface.t_typ))
