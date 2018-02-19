open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tool_button_new type object not implemented*)
(*Not implemented gtk_tool_button_new_from_stock return type object not handled*)
val get_icon_name:
  t structure ptr -> string option
(*Not implemented gtk_tool_button_get_icon_widget return type object not handled*)
val get_label:
  t structure ptr -> string option
(*Not implemented gtk_tool_button_get_label_widget return type object not handled*)
val get_stock_id:
  t structure ptr -> string option
val get_use_underline:
  t structure ptr -> bool
val set_icon_name:
  t structure ptr -> string option -> unit
(*Not implemented gtk_tool_button_set_icon_widget type object not implemented*)
val set_label:
  t structure ptr -> string option -> unit
(*Not implemented gtk_tool_button_set_label_widget type object not implemented*)
val set_stock_id:
  t structure ptr -> string option -> unit
val set_use_underline:
  t structure ptr -> bool -> unit
