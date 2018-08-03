open Ctypes

type t
val t_typ : t typ

val create :
  Orientation.t -> Widget.t ptr
