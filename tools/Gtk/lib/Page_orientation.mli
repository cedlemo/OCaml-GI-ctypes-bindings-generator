open Ctypes

type t = Portrait | Landscape | Reverse_portrait | Reverse_landscape

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

