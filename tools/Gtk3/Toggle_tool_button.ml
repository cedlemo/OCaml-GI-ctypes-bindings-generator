open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_toggle_tool_button_new" (void @-> returning (ptr Tool_item.t_typ))
let create_from_stock =
  foreign "gtk_toggle_tool_button_new_from_stock" (string @-> returning (ptr Tool_item.t_typ))
let get_active =
  foreign "gtk_toggle_tool_button_get_active" (t_typ @-> returning (bool))
let set_active =
  foreign "gtk_toggle_tool_button_set_active" (t_typ @-> bool @-> returning (void))
