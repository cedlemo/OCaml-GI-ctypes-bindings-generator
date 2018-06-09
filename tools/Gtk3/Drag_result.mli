open Ctypes

type t = Success | No_target | User_cancelled | Timeout_expired | Grab_broken | Error

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

