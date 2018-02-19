open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tool_button_new type object not implemented*)
(*Not implemented gtk_tool_button_new_from_stock return type object not handled*)
let get_icon_name =
  foreign "gtk_tool_button_get_icon_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_tool_button_get_icon_widget return type object not handled*)
let get_label =
  foreign "gtk_tool_button_get_label" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_tool_button_get_label_widget return type object not handled*)
let get_stock_id =
  foreign "gtk_tool_button_get_stock_id" (ptr t_typ @-> returning (string_opt))
let get_use_underline =
  foreign "gtk_tool_button_get_use_underline" (ptr t_typ @-> returning (bool))
let set_icon_name =
  foreign "gtk_tool_button_set_icon_name" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_tool_button_set_icon_widget type object not implemented*)
let set_label =
  foreign "gtk_tool_button_set_label" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_tool_button_set_label_widget type object not implemented*)
let set_stock_id =
  foreign "gtk_tool_button_set_stock_id" (ptr t_typ @-> string_opt @-> returning (void))
let set_use_underline =
  foreign "gtk_tool_button_set_use_underline" (ptr t_typ @-> bool @-> returning (void))
