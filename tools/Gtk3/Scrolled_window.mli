open Ctypes

type t
val t_typ : t typ

val create :
  Adjustment.t -> Adjustment.t -> Widget.t
val add_with_viewport :
  t -> Widget.t -> unit
val get_capture_button_press :
  t -> bool
val get_hadjustment :
  t -> Adjustment.t
val get_hscrollbar :
  t -> Widget.t
val get_kinetic_scrolling :
  t -> bool
val get_max_content_height :
  t -> int32
val get_max_content_width :
  t -> int32
val get_min_content_height :
  t -> int32
val get_min_content_width :
  t -> int32
val get_overlay_scrolling :
  t -> bool
val get_placement :
  t -> Corner_type.t
val get_policy :
  t -> (Policy_type.t * Policy_type.t)
val get_propagate_natural_height :
  t -> bool
val get_propagate_natural_width :
  t -> bool
val get_shadow_type :
  t -> Shadow_type.t
val get_vadjustment :
  t -> Adjustment.t
val get_vscrollbar :
  t -> Widget.t
val set_capture_button_press :
  t -> bool -> unit
val set_hadjustment :
  t -> Adjustment.t -> unit
val set_kinetic_scrolling :
  t -> bool -> unit
val set_max_content_height :
  t -> int32 -> unit
val set_max_content_width :
  t -> int32 -> unit
val set_min_content_height :
  t -> int32 -> unit
val set_min_content_width :
  t -> int32 -> unit
val set_overlay_scrolling :
  t -> bool -> unit
val set_placement :
  t -> Corner_type.t -> unit
val set_policy :
  t -> Policy_type.t -> Policy_type.t -> unit
val set_propagate_natural_height :
  t -> bool -> unit
val set_propagate_natural_width :
  t -> bool -> unit
val set_shadow_type :
  t -> Shadow_type.t -> unit
val set_vadjustment :
  t -> Adjustment.t -> unit
val unset_placement :
  t -> unit
