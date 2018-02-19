open Ctypes

type t = Free_form | Alpha | Digits | Number | Phone | Url | Email | Name | Password | Pin

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

