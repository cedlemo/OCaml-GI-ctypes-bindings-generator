open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_alignment_new return type object not handled*)
val get_padding :
  t structure ptr -> (Unsigned.uint32 * Unsigned.uint32 * Unsigned.uint32 * Unsigned.uint32)
val set:
  t structure ptr -> float -> float -> float -> float -> unit
val set_padding:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> unit
