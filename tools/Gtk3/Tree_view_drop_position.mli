open Ctypes

type t = Before | After | Into_or_before | Into_or_after

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

