open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_font_selection_dialog_new return type object not handled*)
(*Not implemented gtk_font_selection_dialog_get_cancel_button return type object not handled*)
val get_font_name:
  t structure ptr -> string option
(*Not implemented gtk_font_selection_dialog_get_font_selection return type object not handled*)
(*Not implemented gtk_font_selection_dialog_get_ok_button return type object not handled*)
val get_preview_text:
  t structure ptr -> string option
val set_font_name:
  t structure ptr -> string -> bool
val set_preview_text:
  t structure ptr -> string -> unit
