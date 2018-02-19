open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_separator_tool_item_new return type object not handled*)
let get_draw =
  foreign "gtk_separator_tool_item_get_draw" (ptr t_typ @-> returning (bool))
let set_draw =
  foreign "gtk_separator_tool_item_set_draw" (ptr t_typ @-> bool @-> returning (void))
