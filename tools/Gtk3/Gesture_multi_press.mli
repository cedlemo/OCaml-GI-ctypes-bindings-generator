open Ctypes

type t
val t_typ : t typ

val create :
  Widget.t ptr -> Gesture.t ptr
val get_area :
  t -> (bool * Rectangle.t structure)
val set_area :
  t -> Rectangle.t structure ptr option -> unit
