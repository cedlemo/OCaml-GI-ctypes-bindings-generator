open Ctypes

type t
val t_typ : t typ

val create:
  Adjustment.t -> Adjustment.t -> Widget.t
val get_bin_window:
  t -> Window.t
val get_hadjustment:
  t -> Adjustment.t
val get_size :
  t -> (Unsigned.uint32 * Unsigned.uint32)
val get_vadjustment:
  t -> Adjustment.t
val move:
  t -> Widget.t -> int32 -> int32 -> unit
val put:
  t -> Widget.t -> int32 -> int32 -> unit
val set_hadjustment:
  t -> Adjustment.t -> unit
val set_size:
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_vadjustment:
  t -> Adjustment.t -> unit
