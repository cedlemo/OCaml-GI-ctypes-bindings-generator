open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_separator_tool_item_new" (void @-> returning (ptr Tool_item.t_typ))
let get_draw =
  foreign "gtk_separator_tool_item_get_draw" (t_typ @-> returning (bool))
let set_draw =
  foreign "gtk_separator_tool_item_set_draw" (t_typ @-> bool @-> returning (void))
