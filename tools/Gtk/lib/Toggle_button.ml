open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_toggle_button_new return type object not handled*)
(*Not implemented gtk_toggle_button_new_with_label return type object not handled*)
(*Not implemented gtk_toggle_button_new_with_mnemonic return type object not handled*)
let get_active =
  foreign "gtk_toggle_button_get_active" (ptr t_typ @-> returning (bool))
let get_inconsistent =
  foreign "gtk_toggle_button_get_inconsistent" (ptr t_typ @-> returning (bool))
let get_mode =
  foreign "gtk_toggle_button_get_mode" (ptr t_typ @-> returning (bool))
let set_active =
  foreign "gtk_toggle_button_set_active" (ptr t_typ @-> bool @-> returning (void))
let set_inconsistent =
  foreign "gtk_toggle_button_set_inconsistent" (ptr t_typ @-> bool @-> returning (void))
let set_mode =
  foreign "gtk_toggle_button_set_mode" (ptr t_typ @-> bool @-> returning (void))
let toggled =
  foreign "gtk_toggle_button_toggled" (ptr t_typ @-> returning (void))
