open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_tool_button_new" (ptr_opt Widget.t_typ @-> string_opt @-> returning (ptr Tool_item.t_typ))
let create_from_stock =
  foreign "gtk_tool_button_new_from_stock" (string @-> returning (ptr Tool_item.t_typ))
let get_icon_name =
  foreign "gtk_tool_button_get_icon_name" (t_typ @-> returning (string_opt))
let get_icon_widget =
  foreign "gtk_tool_button_get_icon_widget" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_label =
  foreign "gtk_tool_button_get_label" (t_typ @-> returning (string_opt))
let get_label_widget =
  foreign "gtk_tool_button_get_label_widget" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_stock_id =
  foreign "gtk_tool_button_get_stock_id" (t_typ @-> returning (string_opt))
let get_use_underline =
  foreign "gtk_tool_button_get_use_underline" (t_typ @-> returning (bool))
let set_icon_name =
  foreign "gtk_tool_button_set_icon_name" (t_typ @-> string_opt @-> returning (void))
let set_icon_widget =
  foreign "gtk_tool_button_set_icon_widget" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_label =
  foreign "gtk_tool_button_set_label" (t_typ @-> string_opt @-> returning (void))
let set_label_widget =
  foreign "gtk_tool_button_set_label_widget" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_stock_id =
  foreign "gtk_tool_button_set_stock_id" (t_typ @-> string_opt @-> returning (void))
let set_use_underline =
  foreign "gtk_tool_button_set_use_underline" (t_typ @-> bool @-> returning (void))
