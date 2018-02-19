open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_radio_tool_button_new return type object not handled*)
(*Not implemented gtk_radio_tool_button_new_from_stock return type object not handled*)
(*Not implemented gtk_radio_tool_button_new_from_widget type object not implemented*)
(*Not implemented gtk_radio_tool_button_new_with_stock_from_widget type object not implemented*)
val get_group:
  t structure ptr -> SList.t structure ptr
val set_group:
  t structure ptr -> SList.t structure ptr option -> unit
