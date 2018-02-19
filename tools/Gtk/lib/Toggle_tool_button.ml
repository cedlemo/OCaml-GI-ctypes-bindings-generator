open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_toggle_tool_button_new return type object not handled*)
(*Not implemented gtk_toggle_tool_button_new_from_stock return type object not handled*)
let get_active =
  foreign "gtk_toggle_tool_button_get_active" (ptr t_typ @-> returning (bool))
let set_active =
  foreign "gtk_toggle_tool_button_set_active" (ptr t_typ @-> bool @-> returning (void))
