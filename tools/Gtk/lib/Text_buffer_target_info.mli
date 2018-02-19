open Ctypes

type t = Buffer_contents | Rich_text | Text

val of_value:
  int32 -> t

val to_value:
  t -> int32

val t_view: t typ

