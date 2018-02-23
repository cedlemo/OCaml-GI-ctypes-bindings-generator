open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_toggle_button_new" (void @-> returning (Widget.t_typ))
let create_with_label =
  foreign "gtk_toggle_button_new_with_label" (string @-> returning (Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_toggle_button_new_with_mnemonic" (string @-> returning (Widget.t_typ))
let get_active =
  foreign "gtk_toggle_button_get_active" (t_typ @-> returning (bool))
let get_inconsistent =
  foreign "gtk_toggle_button_get_inconsistent" (t_typ @-> returning (bool))
let get_mode =
  foreign "gtk_toggle_button_get_mode" (t_typ @-> returning (bool))
let set_active =
  foreign "gtk_toggle_button_set_active" (t_typ @-> bool @-> returning (void))
let set_inconsistent =
  foreign "gtk_toggle_button_set_inconsistent" (t_typ @-> bool @-> returning (void))
let set_mode =
  foreign "gtk_toggle_button_set_mode" (t_typ @-> bool @-> returning (void))
let toggled =
  foreign "gtk_toggle_button_toggled" (t_typ @-> returning (void))
