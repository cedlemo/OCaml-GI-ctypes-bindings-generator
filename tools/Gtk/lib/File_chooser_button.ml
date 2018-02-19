open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_file_chooser_button_new return type object not handled*)
(*Not implemented gtk_file_chooser_button_new_with_dialog type object not implemented*)
let get_focus_on_click =
  foreign "gtk_file_chooser_button_get_focus_on_click" (ptr t_typ @-> returning (bool))
let get_title =
  foreign "gtk_file_chooser_button_get_title" (ptr t_typ @-> returning (string_opt))
let get_width_chars =
  foreign "gtk_file_chooser_button_get_width_chars" (ptr t_typ @-> returning (int32_t))
let set_focus_on_click =
  foreign "gtk_file_chooser_button_set_focus_on_click" (ptr t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_file_chooser_button_set_title" (ptr t_typ @-> string @-> returning (void))
let set_width_chars =
  foreign "gtk_file_chooser_button_set_width_chars" (ptr t_typ @-> int32_t @-> returning (void))
