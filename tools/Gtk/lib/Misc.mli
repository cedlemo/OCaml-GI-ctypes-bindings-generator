open Ctypes

type t
val t_typ : t typ

val get_alignment :
  t -> (float * float)
val get_padding :
  t -> (int32 * int32)
val set_alignment :
  t -> float -> float -> unit
val set_padding :
  t -> int32 -> int32 -> unit
