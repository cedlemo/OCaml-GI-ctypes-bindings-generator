open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_scale_button_new type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_scale_button_get_adjustment return type object not handled*)
(*Not implemented gtk_scale_button_get_minus_button return type object not handled*)
(*Not implemented gtk_scale_button_get_plus_button return type object not handled*)
(*Not implemented gtk_scale_button_get_popup return type object not handled*)
let get_value =
  foreign "gtk_scale_button_get_value" (ptr t_typ @-> returning (double))
(*Not implemented gtk_scale_button_set_adjustment type object not implemented*)
(*Not implemented gtk_scale_button_set_icons type C Array type for Types.Array tag not implemented*)
let set_value =
  foreign "gtk_scale_button_set_value" (ptr t_typ @-> double @-> returning (void))
