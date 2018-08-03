open Ctypes

type t
val t_typ : t typ

val create :
  string -> Widget.t ptr
val get_color_selection :
  t -> Widget.t ptr
