open Ctypes

type t = Height_for_width | Width_for_height | Constant_size

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

