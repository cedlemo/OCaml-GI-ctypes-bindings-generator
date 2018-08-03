open Ctypes

type t
val t_typ : t typ

val create :
  Adjustment.t ptr option -> Adjustment.t ptr option -> Widget.t ptr
val get_bin_window :
  t -> Window.t ptr
val get_hadjustment :
  t -> Adjustment.t ptr
val get_shadow_type :
  t -> Shadow_type.t
val get_vadjustment :
  t -> Adjustment.t ptr
val get_view_window :
  t -> Window.t ptr
val set_hadjustment :
  t -> Adjustment.t ptr option -> unit
val set_shadow_type :
  t -> Shadow_type.t -> unit
val set_vadjustment :
  t -> Adjustment.t ptr option -> unit
