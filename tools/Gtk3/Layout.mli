open Ctypes

type t
val t_typ : t typ

val create :
  Adjustment.t ptr option -> Adjustment.t ptr option -> Widget.t ptr
val get_bin_window :
  t -> Window.t ptr
val get_hadjustment :
  t -> Adjustment.t ptr
val get_size :
  t -> (Unsigned.uint32 * Unsigned.uint32)
val get_vadjustment :
  t -> Adjustment.t ptr
val move :
  t -> Widget.t ptr -> int32 -> int32 -> unit
val put :
  t -> Widget.t ptr -> int32 -> int32 -> unit
val set_hadjustment :
  t -> Adjustment.t ptr option -> unit
val set_size :
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val set_vadjustment :
  t -> Adjustment.t ptr option -> unit
