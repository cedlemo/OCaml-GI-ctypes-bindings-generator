open Ctypes

type t
val t_typ : t typ

val create:
  Adjustment.t -> float -> Unsigned.uint32 -> Widget.t
val create_with_range:
  float -> float -> float -> Widget.t
val configure:
  t -> Adjustment.t -> float -> Unsigned.uint32 -> unit
val get_adjustment:
  t -> Adjustment.t
val get_digits:
  t -> Unsigned.uint32
val get_increments :
  t -> (float * float)
val get_numeric:
  t -> bool
val get_range :
  t -> (float * float)
val get_snap_to_ticks:
  t -> bool
val get_update_policy:
  t -> Spin_button_update_policy.t
val get_value:
  t -> float
val get_value_as_int:
  t -> int32
val get_wrap:
  t -> bool
val set_adjustment:
  t -> Adjustment.t -> unit
val set_digits:
  t -> Unsigned.uint32 -> unit
val set_increments:
  t -> float -> float -> unit
val set_numeric:
  t -> bool -> unit
val set_range:
  t -> float -> float -> unit
val set_snap_to_ticks:
  t -> bool -> unit
val set_update_policy:
  t -> Spin_button_update_policy.t -> unit
val set_value:
  t -> float -> unit
val set_wrap:
  t -> bool -> unit
val spin:
  t -> Spin_type.t -> float -> unit
val update:
  t -> unit
