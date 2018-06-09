open Ctypes

type t = None | Ok | Close | Cancel | Yes_no | Ok_cancel

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

