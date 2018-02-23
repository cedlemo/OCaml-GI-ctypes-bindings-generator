open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_font_selection_dialog_new" (string @-> returning (Widget.t_typ))
let get_cancel_button =
  foreign "gtk_font_selection_dialog_get_cancel_button" (t_typ @-> returning (Widget.t_typ))
let get_font_name =
  foreign "gtk_font_selection_dialog_get_font_name" (t_typ @-> returning (string_opt))
let get_font_selection =
  foreign "gtk_font_selection_dialog_get_font_selection" (t_typ @-> returning (Widget.t_typ))
let get_ok_button =
  foreign "gtk_font_selection_dialog_get_ok_button" (t_typ @-> returning (Widget.t_typ))
let get_preview_text =
  foreign "gtk_font_selection_dialog_get_preview_text" (t_typ @-> returning (string_opt))
let set_font_name =
  foreign "gtk_font_selection_dialog_set_font_name" (t_typ @-> string @-> returning (bool))
let set_preview_text =
  foreign "gtk_font_selection_dialog_set_preview_text" (t_typ @-> string @-> returning (void))
