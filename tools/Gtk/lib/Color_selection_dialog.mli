open Ctypes

type t
val t_typ : t typ

val create:
  string -> Widget.t
val get_color_selection:
  t -> Widget.t
