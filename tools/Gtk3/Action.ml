open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_action_new" (string @-> string_opt @-> string_opt @-> string_opt @-> returning (t_typ))
let activate =
  foreign "gtk_action_activate" (t_typ @-> returning (void))
let block_activate =
  foreign "gtk_action_block_activate" (t_typ @-> returning (void))
let connect_accelerator =
  foreign "gtk_action_connect_accelerator" (t_typ @-> returning (void))
let create_icon =
  foreign "gtk_action_create_icon" (t_typ @-> int32_t @-> returning (Widget.t_typ))
let create_menu =
  foreign "gtk_action_create_menu" (t_typ @-> returning (Widget.t_typ))
let create_menu_item =
  foreign "gtk_action_create_menu_item" (t_typ @-> returning (Widget.t_typ))
let create_tool_item =
  foreign "gtk_action_create_tool_item" (t_typ @-> returning (Widget.t_typ))
let disconnect_accelerator =
  foreign "gtk_action_disconnect_accelerator" (t_typ @-> returning (void))
let get_accel_closure =
  foreign "gtk_action_get_accel_closure" (t_typ @-> returning (ptr Closure.t_typ))
let get_accel_path =
  foreign "gtk_action_get_accel_path" (t_typ @-> returning (string_opt))
let get_always_show_image =
  foreign "gtk_action_get_always_show_image" (t_typ @-> returning (bool))
(*Not implemented gtk_action_get_gicon return type interface not handled*)
let get_icon_name =
  foreign "gtk_action_get_icon_name" (t_typ @-> returning (string_opt))
let get_is_important =
  foreign "gtk_action_get_is_important" (t_typ @-> returning (bool))
let get_label =
  foreign "gtk_action_get_label" (t_typ @-> returning (string_opt))
let get_name =
  foreign "gtk_action_get_name" (t_typ @-> returning (string_opt))
let get_proxies =
  foreign "gtk_action_get_proxies" (t_typ @-> returning (ptr SList.t_typ))
let get_sensitive =
  foreign "gtk_action_get_sensitive" (t_typ @-> returning (bool))
let get_short_label =
  foreign "gtk_action_get_short_label" (t_typ @-> returning (string_opt))
let get_stock_id =
  foreign "gtk_action_get_stock_id" (t_typ @-> returning (string_opt))
let get_tooltip =
  foreign "gtk_action_get_tooltip" (t_typ @-> returning (string_opt))
let get_visible =
  foreign "gtk_action_get_visible" (t_typ @-> returning (bool))
let get_visible_horizontal =
  foreign "gtk_action_get_visible_horizontal" (t_typ @-> returning (bool))
let get_visible_vertical =
  foreign "gtk_action_get_visible_vertical" (t_typ @-> returning (bool))
let is_sensitive =
  foreign "gtk_action_is_sensitive" (t_typ @-> returning (bool))
let is_visible =
  foreign "gtk_action_is_visible" (t_typ @-> returning (bool))
let set_accel_group =
  foreign "gtk_action_set_accel_group" (t_typ @-> Accel_group.t_typ @-> returning (void))
let set_accel_path =
  foreign "gtk_action_set_accel_path" (t_typ @-> string @-> returning (void))
let set_always_show_image =
  foreign "gtk_action_set_always_show_image" (t_typ @-> bool @-> returning (void))
(*Not implemented gtk_action_set_gicon type interface not implemented*)
let set_icon_name =
  foreign "gtk_action_set_icon_name" (t_typ @-> string @-> returning (void))
let set_is_important =
  foreign "gtk_action_set_is_important" (t_typ @-> bool @-> returning (void))
let set_label =
  foreign "gtk_action_set_label" (t_typ @-> string @-> returning (void))
let set_sensitive =
  foreign "gtk_action_set_sensitive" (t_typ @-> bool @-> returning (void))
let set_short_label =
  foreign "gtk_action_set_short_label" (t_typ @-> string @-> returning (void))
let set_stock_id =
  foreign "gtk_action_set_stock_id" (t_typ @-> string @-> returning (void))
let set_tooltip =
  foreign "gtk_action_set_tooltip" (t_typ @-> string @-> returning (void))
let set_visible =
  foreign "gtk_action_set_visible" (t_typ @-> bool @-> returning (void))
let set_visible_horizontal =
  foreign "gtk_action_set_visible_horizontal" (t_typ @-> bool @-> returning (void))
let set_visible_vertical =
  foreign "gtk_action_set_visible_vertical" (t_typ @-> bool @-> returning (void))
let unblock_activate =
  foreign "gtk_action_unblock_activate" (t_typ @-> returning (void))
