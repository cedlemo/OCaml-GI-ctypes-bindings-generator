open Ctypes

type t = Collapsed | Semi_collapsed | Semi_expanded | Expanded

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

