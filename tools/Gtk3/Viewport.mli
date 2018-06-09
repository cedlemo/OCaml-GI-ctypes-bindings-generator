open Ctypes

type t
val t_typ : t typ

val create :
  Adjustment.t -> Adjustment.t -> Widget.t
val get_bin_window :
  t -> Window.t
val get_hadjustment :
  t -> Adjustment.t
val get_shadow_type :
  t -> Shadow_type.t
val get_vadjustment :
  t -> Adjustment.t
val get_view_window :
  t -> Window.t
val set_hadjustment :
  t -> Adjustment.t -> unit
val set_shadow_type :
  t -> Shadow_type.t -> unit
val set_vadjustment :
  t -> Adjustment.t -> unit
