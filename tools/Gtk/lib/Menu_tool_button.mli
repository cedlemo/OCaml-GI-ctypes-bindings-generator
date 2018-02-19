open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_menu_tool_button_new type object not implemented*)
(*Not implemented gtk_menu_tool_button_new_from_stock return type object not handled*)
(*Not implemented gtk_menu_tool_button_get_menu return type object not handled*)
val set_arrow_tooltip_markup:
  t structure ptr -> string -> unit
val set_arrow_tooltip_text:
  t structure ptr -> string -> unit
(*Not implemented gtk_menu_tool_button_set_menu type object not implemented*)
