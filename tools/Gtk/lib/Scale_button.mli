open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_scale_button_new type C Array type for Types.Array tag not implemented*)
val get_adjustment:
  t -> Adjustment.t
val get_minus_button:
  t -> Button.t
val get_plus_button:
  t -> Button.t
val get_popup:
  t -> Widget.t
val get_value:
  t -> float
val set_adjustment:
  t -> Adjustment.t -> unit
(*Not implemented gtk_scale_button_set_icons type C Array type for Types.Array tag not implemented*)
val set_value:
  t -> float -> unit
