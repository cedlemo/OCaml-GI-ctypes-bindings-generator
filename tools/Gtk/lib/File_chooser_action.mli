open Ctypes

type t = Open | Save | Select_folder | Create_folder

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

