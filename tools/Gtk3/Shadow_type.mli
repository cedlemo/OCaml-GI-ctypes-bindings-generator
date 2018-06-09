open Ctypes

type t = None | In | Out | Etched_in | Etched_out

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

