open Ctypes

type t = Steps | Pages | Ends | Horizontal_steps | Horizontal_pages | Horizontal_ends

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

