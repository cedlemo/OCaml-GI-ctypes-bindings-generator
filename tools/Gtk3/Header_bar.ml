open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_header_bar_new" (void @-> returning (Widget.t_typ))
let get_custom_title =
  foreign "gtk_header_bar_get_custom_title" (t_typ @-> returning (Widget.t_typ))
let get_decoration_layout =
  foreign "gtk_header_bar_get_decoration_layout" (t_typ @-> returning (string_opt))
let get_has_subtitle =
  foreign "gtk_header_bar_get_has_subtitle" (t_typ @-> returning (bool))
let get_show_close_button =
  foreign "gtk_header_bar_get_show_close_button" (t_typ @-> returning (bool))
let get_subtitle =
  foreign "gtk_header_bar_get_subtitle" (t_typ @-> returning (string_opt))
let get_title =
  foreign "gtk_header_bar_get_title" (t_typ @-> returning (string_opt))
let pack_end =
  foreign "gtk_header_bar_pack_end" (t_typ @-> Widget.t_typ @-> returning (void))
let pack_start =
  foreign "gtk_header_bar_pack_start" (t_typ @-> Widget.t_typ @-> returning (void))
let set_custom_title =
  foreign "gtk_header_bar_set_custom_title" (t_typ @-> Widget.t_typ @-> returning (void))
let set_decoration_layout =
  foreign "gtk_header_bar_set_decoration_layout" (t_typ @-> string_opt @-> returning (void))
let set_has_subtitle =
  foreign "gtk_header_bar_set_has_subtitle" (t_typ @-> bool @-> returning (void))
let set_show_close_button =
  foreign "gtk_header_bar_set_show_close_button" (t_typ @-> bool @-> returning (void))
let set_subtitle =
  foreign "gtk_header_bar_set_subtitle" (t_typ @-> string_opt @-> returning (void))
let set_title =
  foreign "gtk_header_bar_set_title" (t_typ @-> string_opt @-> returning (void))
