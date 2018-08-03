open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_scale_button_new type C Array type for Types.Array tag not implemented*)
let get_adjustment =
  foreign "gtk_scale_button_get_adjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let get_minus_button =
  foreign "gtk_scale_button_get_minus_button" (t_typ @-> returning (ptr Button.t_typ))
let get_plus_button =
  foreign "gtk_scale_button_get_plus_button" (t_typ @-> returning (ptr Button.t_typ))
let get_popup =
  foreign "gtk_scale_button_get_popup" (t_typ @-> returning (ptr Widget.t_typ))
let get_value =
  foreign "gtk_scale_button_get_value" (t_typ @-> returning (double))
let set_adjustment =
  foreign "gtk_scale_button_set_adjustment" (t_typ @-> ptr Adjustment.t_typ @-> returning (void))
(*Not implemented gtk_scale_button_set_icons type C Array type for Types.Array tag not implemented*)
let set_value =
  foreign "gtk_scale_button_set_value" (t_typ @-> double @-> returning (void))
