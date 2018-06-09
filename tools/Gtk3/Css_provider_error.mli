open Ctypes

type t = Failed | Syntax | Import | Name | Deprecated | Unknown_value

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

