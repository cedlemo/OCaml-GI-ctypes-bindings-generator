open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_pixbuf:
  t -> Pixbuf.t
val get_surface:
  t -> Surface.t structure ptr option
