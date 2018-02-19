open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_header_bar_new return type object not handled*)
(*Not implemented gtk_header_bar_get_custom_title return type object not handled*)
let get_decoration_layout =
  foreign "gtk_header_bar_get_decoration_layout" (ptr t_typ @-> returning (string_opt))
let get_has_subtitle =
  foreign "gtk_header_bar_get_has_subtitle" (ptr t_typ @-> returning (bool))
let get_show_close_button =
  foreign "gtk_header_bar_get_show_close_button" (ptr t_typ @-> returning (bool))
let get_subtitle =
  foreign "gtk_header_bar_get_subtitle" (ptr t_typ @-> returning (string_opt))
let get_title =
  foreign "gtk_header_bar_get_title" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_header_bar_pack_end type object not implemented*)
(*Not implemented gtk_header_bar_pack_start type object not implemented*)
(*Not implemented gtk_header_bar_set_custom_title type object not implemented*)
let set_decoration_layout =
  foreign "gtk_header_bar_set_decoration_layout" (ptr t_typ @-> string_opt @-> returning (void))
let set_has_subtitle =
  foreign "gtk_header_bar_set_has_subtitle" (ptr t_typ @-> bool @-> returning (void))
let set_show_close_button =
  foreign "gtk_header_bar_set_show_close_button" (ptr t_typ @-> bool @-> returning (void))
let set_subtitle =
  foreign "gtk_header_bar_set_subtitle" (ptr t_typ @-> string_opt @-> returning (void))
let set_title =
  foreign "gtk_header_bar_set_title" (ptr t_typ @-> string_opt @-> returning (void))
