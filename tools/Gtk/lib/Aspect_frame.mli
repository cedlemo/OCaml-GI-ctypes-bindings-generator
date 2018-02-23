open Ctypes

type t
val t_typ : t typ

val create:
  string option -> float -> float -> float -> bool -> Widget.t
val set:
  t -> float -> float -> float -> bool -> unit
