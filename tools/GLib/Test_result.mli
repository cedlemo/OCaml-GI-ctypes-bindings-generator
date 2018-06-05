open Ctypes

type t = Success | Skipped | Failure | Incomplete

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

