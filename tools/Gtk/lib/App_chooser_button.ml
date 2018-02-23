open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_app_chooser_button_new" (string @-> returning (Widget.t_typ))
(*Not implemented gtk_app_chooser_button_append_custom_item type interface not implemented*)
let append_separator =
  foreign "gtk_app_chooser_button_append_separator" (t_typ @-> returning (void))
let get_heading =
  foreign "gtk_app_chooser_button_get_heading" (t_typ @-> returning (string_opt))
let get_show_default_item =
  foreign "gtk_app_chooser_button_get_show_default_item" (t_typ @-> returning (bool))
let get_show_dialog_item =
  foreign "gtk_app_chooser_button_get_show_dialog_item" (t_typ @-> returning (bool))
let set_active_custom_item =
  foreign "gtk_app_chooser_button_set_active_custom_item" (t_typ @-> string @-> returning (void))
let set_heading =
  foreign "gtk_app_chooser_button_set_heading" (t_typ @-> string @-> returning (void))
let set_show_default_item =
  foreign "gtk_app_chooser_button_set_show_default_item" (t_typ @-> bool @-> returning (void))
let set_show_dialog_item =
  foreign "gtk_app_chooser_button_set_show_dialog_item" (t_typ @-> bool @-> returning (void))
