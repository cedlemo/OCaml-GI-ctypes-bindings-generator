open Ctypes

type t
val t_typ : t typ

val create:
  Adjustment.t -> Widget.t
val create_with_range:
  float -> float -> float -> Widget.t
