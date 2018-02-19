open Ctypes

type t = Private | Widget | Text | Left | Right | Top | Bottom

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

