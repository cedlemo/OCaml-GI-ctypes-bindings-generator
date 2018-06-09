open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_font_button_new" (void @-> returning (Widget.t_typ))
let create_with_font =
  foreign "gtk_font_button_new_with_font" (string @-> returning (Widget.t_typ))
let get_font_name =
  foreign "gtk_font_button_get_font_name" (t_typ @-> returning (string_opt))
let get_show_size =
  foreign "gtk_font_button_get_show_size" (t_typ @-> returning (bool))
let get_show_style =
  foreign "gtk_font_button_get_show_style" (t_typ @-> returning (bool))
let get_title =
  foreign "gtk_font_button_get_title" (t_typ @-> returning (string_opt))
let get_use_font =
  foreign "gtk_font_button_get_use_font" (t_typ @-> returning (bool))
let get_use_size =
  foreign "gtk_font_button_get_use_size" (t_typ @-> returning (bool))
let set_font_name =
  foreign "gtk_font_button_set_font_name" (t_typ @-> string @-> returning (bool))
let set_show_size =
  foreign "gtk_font_button_set_show_size" (t_typ @-> bool @-> returning (void))
let set_show_style =
  foreign "gtk_font_button_set_show_style" (t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_font_button_set_title" (t_typ @-> string @-> returning (void))
let set_use_font =
  foreign "gtk_font_button_set_use_font" (t_typ @-> bool @-> returning (void))
let set_use_size =
  foreign "gtk_font_button_set_use_size" (t_typ @-> bool @-> returning (void))
