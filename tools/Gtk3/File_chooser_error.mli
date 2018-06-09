open Ctypes

type t = Nonexistent | Bad_filename | Already_exists | Incomplete_hostname

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

