open Ctypes

type t = No_drop | Drop_into | Drop_left | Drop_right | Drop_above | Drop_below

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

