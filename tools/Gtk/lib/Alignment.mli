open Ctypes

type t
val t_typ : t typ

val create:
  float -> float -> float -> float -> Widget.t
val get_padding :
  t -> (Unsigned.uint32 * Unsigned.uint32 * Unsigned.uint32 * Unsigned.uint32)
val set:
  t -> float -> float -> float -> float -> unit
val set_padding:
  t -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> unit
