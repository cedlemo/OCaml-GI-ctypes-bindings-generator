open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_radio_tool_button_new return type object not handled*)
(*Not implemented gtk_radio_tool_button_new_from_stock return type object not handled*)
(*Not implemented gtk_radio_tool_button_new_from_widget type object not implemented*)
(*Not implemented gtk_radio_tool_button_new_with_stock_from_widget type object not implemented*)
let get_group =
  foreign "gtk_radio_tool_button_get_group" (ptr t_typ @-> returning (ptr SList.t_typ))
let set_group =
  foreign "gtk_radio_tool_button_set_group" (ptr t_typ @-> ptr_opt SList.t_typ @-> returning (void))
