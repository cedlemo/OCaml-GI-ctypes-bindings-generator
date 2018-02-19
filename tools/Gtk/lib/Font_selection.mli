open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_font_selection_new return type object not handled*)
(*Not implemented gtk_font_selection_get_face return type object not handled*)
(*Not implemented gtk_font_selection_get_face_list return type object not handled*)
(*Not implemented gtk_font_selection_get_family return type object not handled*)
(*Not implemented gtk_font_selection_get_family_list return type object not handled*)
val get_font_name:
  t structure ptr -> string option
(*Not implemented gtk_font_selection_get_preview_entry return type object not handled*)
val get_preview_text:
  t structure ptr -> string option
val get_size:
  t structure ptr -> int32
(*Not implemented gtk_font_selection_get_size_entry return type object not handled*)
(*Not implemented gtk_font_selection_get_size_list return type object not handled*)
val set_font_name:
  t structure ptr -> string -> bool
val set_preview_text:
  t structure ptr -> string -> unit
