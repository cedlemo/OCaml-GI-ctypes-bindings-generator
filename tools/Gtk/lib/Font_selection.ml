open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_font_selection_new return type object not handled*)
(*Not implemented gtk_font_selection_get_face return type object not handled*)
(*Not implemented gtk_font_selection_get_face_list return type object not handled*)
(*Not implemented gtk_font_selection_get_family return type object not handled*)
(*Not implemented gtk_font_selection_get_family_list return type object not handled*)
let get_font_name =
  foreign "gtk_font_selection_get_font_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_font_selection_get_preview_entry return type object not handled*)
let get_preview_text =
  foreign "gtk_font_selection_get_preview_text" (ptr t_typ @-> returning (string_opt))
let get_size =
  foreign "gtk_font_selection_get_size" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_font_selection_get_size_entry return type object not handled*)
(*Not implemented gtk_font_selection_get_size_list return type object not handled*)
let set_font_name =
  foreign "gtk_font_selection_set_font_name" (ptr t_typ @-> string @-> returning (bool))
let set_preview_text =
  foreign "gtk_font_selection_set_preview_text" (ptr t_typ @-> string @-> returning (void))
