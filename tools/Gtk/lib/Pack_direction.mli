open Ctypes

type t = Ltr | Rtl | Ttb | Btt

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

