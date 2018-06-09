open Ctypes

type t = Icons | Text | Both | Both_horiz

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

