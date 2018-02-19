open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_range_get_adjustment return type object not handled*)
val get_fill_level:
  t structure ptr -> float
val get_flippable:
  t structure ptr -> bool
val get_inverted:
  t structure ptr -> bool
val get_lower_stepper_sensitivity:
  t structure ptr -> Sensitivity_type.t
val get_min_slider_size:
  t structure ptr -> int32
val get_range_rect :
  t structure ptr -> (Rectangle.t structure)
val get_restrict_to_fill_level:
  t structure ptr -> bool
val get_round_digits:
  t structure ptr -> int32
val get_show_fill_level:
  t structure ptr -> bool
val get_slider_range :
  t structure ptr -> (int32 * int32)
val get_slider_size_fixed:
  t structure ptr -> bool
val get_upper_stepper_sensitivity:
  t structure ptr -> Sensitivity_type.t
val get_value:
  t structure ptr -> float
(*Not implemented gtk_range_set_adjustment type object not implemented*)
val set_fill_level:
  t structure ptr -> float -> unit
val set_flippable:
  t structure ptr -> bool -> unit
val set_increments:
  t structure ptr -> float -> float -> unit
val set_inverted:
  t structure ptr -> bool -> unit
val set_lower_stepper_sensitivity:
  t structure ptr -> Sensitivity_type.t -> unit
val set_min_slider_size:
  t structure ptr -> int32 -> unit
val set_range:
  t structure ptr -> float -> float -> unit
val set_restrict_to_fill_level:
  t structure ptr -> bool -> unit
val set_round_digits:
  t structure ptr -> int32 -> unit
val set_show_fill_level:
  t structure ptr -> bool -> unit
val set_slider_size_fixed:
  t structure ptr -> bool -> unit
val set_upper_stepper_sensitivity:
  t structure ptr -> Sensitivity_type.t -> unit
val set_value:
  t structure ptr -> float -> unit
