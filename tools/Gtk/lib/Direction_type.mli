open Ctypes

type t = Tab_forward | Tab_backward | Up | Down | Left | Right

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

