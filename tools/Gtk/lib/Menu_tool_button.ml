open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_menu_tool_button_new type object not implemented*)
(*Not implemented gtk_menu_tool_button_new_from_stock return type object not handled*)
(*Not implemented gtk_menu_tool_button_get_menu return type object not handled*)
let set_arrow_tooltip_markup =
  foreign "gtk_menu_tool_button_set_arrow_tooltip_markup" (ptr t_typ @-> string @-> returning (void))
let set_arrow_tooltip_text =
  foreign "gtk_menu_tool_button_set_arrow_tooltip_text" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_menu_tool_button_set_menu type object not implemented*)
