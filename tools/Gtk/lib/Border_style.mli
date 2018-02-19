open Ctypes

type t = None | Solid | Inset | Outset | Hidden | Dotted | Dashed | Double | Groove | Ridge

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

