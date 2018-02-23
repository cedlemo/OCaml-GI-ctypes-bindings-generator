open Ctypes

type t
val t_typ : t typ

val get_adjustment:
  t -> Adjustment.t
val get_fill_level:
  t -> float
val get_flippable:
  t -> bool
val get_inverted:
  t -> bool
val get_lower_stepper_sensitivity:
  t -> Sensitivity_type.t
val get_min_slider_size:
  t -> int32
val get_range_rect :
  t -> (Rectangle.t structure)
val get_restrict_to_fill_level:
  t -> bool
val get_round_digits:
  t -> int32
val get_show_fill_level:
  t -> bool
val get_slider_range :
  t -> (int32 * int32)
val get_slider_size_fixed:
  t -> bool
val get_upper_stepper_sensitivity:
  t -> Sensitivity_type.t
val get_value:
  t -> float
val set_adjustment:
  t -> Adjustment.t -> unit
val set_fill_level:
  t -> float -> unit
val set_flippable:
  t -> bool -> unit
val set_increments:
  t -> float -> float -> unit
val set_inverted:
  t -> bool -> unit
val set_lower_stepper_sensitivity:
  t -> Sensitivity_type.t -> unit
val set_min_slider_size:
  t -> int32 -> unit
val set_range:
  t -> float -> float -> unit
val set_restrict_to_fill_level:
  t -> bool -> unit
val set_round_digits:
  t -> int32 -> unit
val set_show_fill_level:
  t -> bool -> unit
val set_slider_size_fixed:
  t -> bool -> unit
val set_upper_stepper_sensitivity:
  t -> Sensitivity_type.t -> unit
val set_value:
  t -> float -> unit
