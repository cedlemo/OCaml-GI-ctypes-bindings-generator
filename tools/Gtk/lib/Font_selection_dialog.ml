open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_font_selection_dialog_new return type object not handled*)
(*Not implemented gtk_font_selection_dialog_get_cancel_button return type object not handled*)
let get_font_name =
  foreign "gtk_font_selection_dialog_get_font_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_font_selection_dialog_get_font_selection return type object not handled*)
(*Not implemented gtk_font_selection_dialog_get_ok_button return type object not handled*)
let get_preview_text =
  foreign "gtk_font_selection_dialog_get_preview_text" (ptr t_typ @-> returning (string_opt))
let set_font_name =
  foreign "gtk_font_selection_dialog_set_font_name" (ptr t_typ @-> string @-> returning (bool))
let set_preview_text =
  foreign "gtk_font_selection_dialog_set_preview_text" (ptr t_typ @-> string @-> returning (void))
