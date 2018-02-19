open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_font_button_new return type object not handled*)
(*Not implemented gtk_font_button_new_with_font return type object not handled*)
let get_font_name =
  foreign "gtk_font_button_get_font_name" (ptr t_typ @-> returning (string_opt))
let get_show_size =
  foreign "gtk_font_button_get_show_size" (ptr t_typ @-> returning (bool))
let get_show_style =
  foreign "gtk_font_button_get_show_style" (ptr t_typ @-> returning (bool))
let get_title =
  foreign "gtk_font_button_get_title" (ptr t_typ @-> returning (string_opt))
let get_use_font =
  foreign "gtk_font_button_get_use_font" (ptr t_typ @-> returning (bool))
let get_use_size =
  foreign "gtk_font_button_get_use_size" (ptr t_typ @-> returning (bool))
let set_font_name =
  foreign "gtk_font_button_set_font_name" (ptr t_typ @-> string @-> returning (bool))
let set_show_size =
  foreign "gtk_font_button_set_show_size" (ptr t_typ @-> bool @-> returning (void))
let set_show_style =
  foreign "gtk_font_button_set_show_style" (ptr t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_font_button_set_title" (ptr t_typ @-> string @-> returning (void))
let set_use_font =
  foreign "gtk_font_button_set_use_font" (ptr t_typ @-> bool @-> returning (void))
let set_use_size =
  foreign "gtk_font_button_set_use_size" (ptr t_typ @-> bool @-> returning (void))
