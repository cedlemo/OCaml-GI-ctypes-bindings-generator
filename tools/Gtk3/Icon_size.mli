open Ctypes

type t = Invalid | Menu | Small_toolbar | Large_toolbar | Button | Dnd | Dialog

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

