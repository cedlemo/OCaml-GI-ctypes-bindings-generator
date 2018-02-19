open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_spin_button_new type object not implemented*)
(*Not implemented gtk_spin_button_new_with_range return type object not handled*)
(*Not implemented gtk_spin_button_configure type object not implemented*)
(*Not implemented gtk_spin_button_get_adjustment return type object not handled*)
val get_digits:
  t structure ptr -> Unsigned.uint32
val get_increments :
  t structure ptr -> (float * float)
val get_numeric:
  t structure ptr -> bool
val get_range :
  t structure ptr -> (float * float)
val get_snap_to_ticks:
  t structure ptr -> bool
val get_update_policy:
  t structure ptr -> Spin_button_update_policy.t
val get_value:
  t structure ptr -> float
val get_value_as_int:
  t structure ptr -> int32
val get_wrap:
  t structure ptr -> bool
(*Not implemented gtk_spin_button_set_adjustment type object not implemented*)
val set_digits:
  t structure ptr -> Unsigned.uint32 -> unit
val set_increments:
  t structure ptr -> float -> float -> unit
val set_numeric:
  t structure ptr -> bool -> unit
val set_range:
  t structure ptr -> float -> float -> unit
val set_snap_to_ticks:
  t structure ptr -> bool -> unit
val set_update_policy:
  t structure ptr -> Spin_button_update_policy.t -> unit
val set_value:
  t structure ptr -> float -> unit
val set_wrap:
  t structure ptr -> bool -> unit
val spin:
  t structure ptr -> Spin_type.t -> float -> unit
val update:
  t structure ptr -> unit
