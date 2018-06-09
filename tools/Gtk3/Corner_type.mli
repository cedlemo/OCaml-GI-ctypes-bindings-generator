open Ctypes

type t = Top_left | Bottom_left | Top_right | Bottom_right

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

