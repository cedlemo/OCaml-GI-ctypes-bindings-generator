open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_scale_button_new type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_scale_button_get_adjustment return type object not handled*)
(*Not implemented gtk_scale_button_get_minus_button return type object not handled*)
(*Not implemented gtk_scale_button_get_plus_button return type object not handled*)
(*Not implemented gtk_scale_button_get_popup return type object not handled*)
val get_value:
  t structure ptr -> float
(*Not implemented gtk_scale_button_set_adjustment type object not implemented*)
(*Not implemented gtk_scale_button_set_icons type C Array type for Types.Array tag not implemented*)
val set_value:
  t structure ptr -> float -> unit
