open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val get_pixbuf :
  t -> Pixbuf.t ptr option
val get_surface :
  t -> Surface.t structure ptr option
