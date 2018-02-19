open Ctypes

type t = None | Crossfade | Slide_right | Slide_left | Slide_up | Slide_down

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

