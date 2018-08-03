open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_menu_tool_button_new" (ptr_opt Widget.t_typ @-> string_opt @-> returning (ptr Tool_item.t_typ))
let create_from_stock =
  foreign "gtk_menu_tool_button_new_from_stock" (string @-> returning (ptr Tool_item.t_typ))
let get_menu =
  foreign "gtk_menu_tool_button_get_menu" (t_typ @-> returning (ptr Widget.t_typ))
let set_arrow_tooltip_markup =
  foreign "gtk_menu_tool_button_set_arrow_tooltip_markup" (t_typ @-> string @-> returning (void))
let set_arrow_tooltip_text =
  foreign "gtk_menu_tool_button_set_arrow_tooltip_text" (t_typ @-> string @-> returning (void))
let set_menu =
  foreign "gtk_menu_tool_button_set_menu" (t_typ @-> ptr Widget.t_typ @-> returning (void))
