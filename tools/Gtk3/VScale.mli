open Ctypes

type t
val t_typ : t typ

val create :
  Adjustment.t ptr -> Widget.t ptr
val create_with_range :
  float -> float -> float -> Widget.t ptr
