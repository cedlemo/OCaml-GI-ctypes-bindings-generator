open Ctypes

type t = Not_found | Invalid_uri | Invalid_encoding | Not_registered | Read | Write | Unknown

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

