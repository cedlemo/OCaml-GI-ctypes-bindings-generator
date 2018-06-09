open Ctypes

type t = None | Jump | Step_backward | Step_forward | Page_backward | Page_forward | Step_up | Step_down | Page_up | Page_down | Step_left | Step_right | Page_left | Page_right | Start | End

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

