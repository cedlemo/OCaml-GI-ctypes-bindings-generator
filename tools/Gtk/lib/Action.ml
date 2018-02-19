open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_action_new return type object not handled*)
let activate =
  foreign "gtk_action_activate" (ptr t_typ @-> returning (void))
let block_activate =
  foreign "gtk_action_block_activate" (ptr t_typ @-> returning (void))
let connect_accelerator =
  foreign "gtk_action_connect_accelerator" (ptr t_typ @-> returning (void))
(*Not implemented gtk_action_create_icon return type object not handled*)
(*Not implemented gtk_action_create_menu return type object not handled*)
(*Not implemented gtk_action_create_menu_item return type object not handled*)
(*Not implemented gtk_action_create_tool_item return type object not handled*)
let disconnect_accelerator =
  foreign "gtk_action_disconnect_accelerator" (ptr t_typ @-> returning (void))
let get_accel_closure =
  foreign "gtk_action_get_accel_closure" (ptr t_typ @-> returning (ptr Closure.t_typ))
let get_accel_path =
  foreign "gtk_action_get_accel_path" (ptr t_typ @-> returning (string_opt))
let get_always_show_image =
  foreign "gtk_action_get_always_show_image" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_action_get_gicon return type interface not handled*)
let get_icon_name =
  foreign "gtk_action_get_icon_name" (ptr t_typ @-> returning (string_opt))
let get_is_important =
  foreign "gtk_action_get_is_important" (ptr t_typ @-> returning (bool))
let get_label =
  foreign "gtk_action_get_label" (ptr t_typ @-> returning (string_opt))
let get_name =
  foreign "gtk_action_get_name" (ptr t_typ @-> returning (string_opt))
let get_proxies =
  foreign "gtk_action_get_proxies" (ptr t_typ @-> returning (ptr SList.t_typ))
let get_sensitive =
  foreign "gtk_action_get_sensitive" (ptr t_typ @-> returning (bool))
let get_short_label =
  foreign "gtk_action_get_short_label" (ptr t_typ @-> returning (string_opt))
let get_stock_id =
  foreign "gtk_action_get_stock_id" (ptr t_typ @-> returning (string_opt))
let get_tooltip =
  foreign "gtk_action_get_tooltip" (ptr t_typ @-> returning (string_opt))
let get_visible =
  foreign "gtk_action_get_visible" (ptr t_typ @-> returning (bool))
let get_visible_horizontal =
  foreign "gtk_action_get_visible_horizontal" (ptr t_typ @-> returning (bool))
let get_visible_vertical =
  foreign "gtk_action_get_visible_vertical" (ptr t_typ @-> returning (bool))
let is_sensitive =
  foreign "gtk_action_is_sensitive" (ptr t_typ @-> returning (bool))
let is_visible =
  foreign "gtk_action_is_visible" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_action_set_accel_group type object not implemented*)
let set_accel_path =
  foreign "gtk_action_set_accel_path" (ptr t_typ @-> string @-> returning (void))
let set_always_show_image =
  foreign "gtk_action_set_always_show_image" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_action_set_gicon type interface not implemented*)
let set_icon_name =
  foreign "gtk_action_set_icon_name" (ptr t_typ @-> string @-> returning (void))
let set_is_important =
  foreign "gtk_action_set_is_important" (ptr t_typ @-> bool @-> returning (void))
let set_label =
  foreign "gtk_action_set_label" (ptr t_typ @-> string @-> returning (void))
let set_sensitive =
  foreign "gtk_action_set_sensitive" (ptr t_typ @-> bool @-> returning (void))
let set_short_label =
  foreign "gtk_action_set_short_label" (ptr t_typ @-> string @-> returning (void))
let set_stock_id =
  foreign "gtk_action_set_stock_id" (ptr t_typ @-> string @-> returning (void))
let set_tooltip =
  foreign "gtk_action_set_tooltip" (ptr t_typ @-> string @-> returning (void))
let set_visible =
  foreign "gtk_action_set_visible" (ptr t_typ @-> bool @-> returning (void))
let set_visible_horizontal =
  foreign "gtk_action_set_visible_horizontal" (ptr t_typ @-> bool @-> returning (void))
let set_visible_vertical =
  foreign "gtk_action_set_visible_vertical" (ptr t_typ @-> bool @-> returning (void))
let unblock_activate =
  foreign "gtk_action_unblock_activate" (ptr t_typ @-> returning (void))
