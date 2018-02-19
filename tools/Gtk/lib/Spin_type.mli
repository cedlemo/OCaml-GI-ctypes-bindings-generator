open Ctypes

type t = Step_forward | Step_backward | Page_forward | Page_backward | Home | End | User_defined

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

