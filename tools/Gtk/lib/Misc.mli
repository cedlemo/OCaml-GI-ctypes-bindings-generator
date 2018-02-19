open Ctypes

type t
val t_typ : t typ

val get_alignment :
  t structure ptr -> (float * float)
val get_padding :
  t structure ptr -> (int32 * int32)
val set_alignment:
  t structure ptr -> float -> float -> unit
val set_padding:
  t structure ptr -> int32 -> int32 -> unit
