open Ctypes

type t = Top | Center | Bottom

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

