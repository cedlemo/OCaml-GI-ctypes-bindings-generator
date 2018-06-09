open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_radio_tool_button_new" (ptr_opt SList.t_typ @-> returning (Tool_item.t_typ))
let create_from_stock =
  foreign "gtk_radio_tool_button_new_from_stock" (ptr_opt SList.t_typ @-> string @-> returning (Tool_item.t_typ))
let create_from_widget =
  foreign "gtk_radio_tool_button_new_from_widget" (t_typ @-> returning (Tool_item.t_typ))
let create_with_stock_from_widget =
  foreign "gtk_radio_tool_button_new_with_stock_from_widget" (t_typ @-> string @-> returning (Tool_item.t_typ))
let get_group =
  foreign "gtk_radio_tool_button_get_group" (t_typ @-> returning (ptr SList.t_typ))
let set_group =
  foreign "gtk_radio_tool_button_set_group" (t_typ @-> ptr_opt SList.t_typ @-> returning (void))
