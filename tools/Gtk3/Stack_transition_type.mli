open Ctypes

type t = None | Crossfade | Slide_right | Slide_left | Slide_up | Slide_down | Slide_left_right | Slide_up_down | Over_up | Over_down | Over_left | Over_right | Under_up | Under_down | Under_left | Under_right | Over_up_down | Over_down_up | Over_left_right | Over_right_left

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

