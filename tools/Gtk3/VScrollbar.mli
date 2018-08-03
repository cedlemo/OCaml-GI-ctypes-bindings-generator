open Ctypes

type t
val t_typ : t typ

val create :
  Adjustment.t ptr option -> Widget.t ptr
