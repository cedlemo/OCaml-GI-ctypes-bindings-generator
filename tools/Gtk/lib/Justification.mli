open Ctypes

type t = Left | Right | Center | Fill

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

