open Ctypes

type t = None | Center | Mouse | Center_always | Center_on_parent

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

