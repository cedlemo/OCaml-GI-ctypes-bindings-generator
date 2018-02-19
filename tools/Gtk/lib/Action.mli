open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_action_new return type object not handled*)
val activate:
  t structure ptr -> unit
val block_activate:
  t structure ptr -> unit
val connect_accelerator:
  t structure ptr -> unit
(*Not implemented gtk_action_create_icon return type object not handled*)
(*Not implemented gtk_action_create_menu return type object not handled*)
(*Not implemented gtk_action_create_menu_item return type object not handled*)
(*Not implemented gtk_action_create_tool_item return type object not handled*)
val disconnect_accelerator:
  t structure ptr -> unit
val get_accel_closure:
  t structure ptr -> Closure.t structure ptr
val get_accel_path:
  t structure ptr -> string option
val get_always_show_image:
  t structure ptr -> bool
(*Not implemented gtk_action_get_gicon return type interface not handled*)
val get_icon_name:
  t structure ptr -> string option
val get_is_important:
  t structure ptr -> bool
val get_label:
  t structure ptr -> string option
val get_name:
  t structure ptr -> string option
val get_proxies:
  t structure ptr -> SList.t structure ptr
val get_sensitive:
  t structure ptr -> bool
val get_short_label:
  t structure ptr -> string option
val get_stock_id:
  t structure ptr -> string option
val get_tooltip:
  t structure ptr -> string option
val get_visible:
  t structure ptr -> bool
val get_visible_horizontal:
  t structure ptr -> bool
val get_visible_vertical:
  t structure ptr -> bool
val is_sensitive:
  t structure ptr -> bool
val is_visible:
  t structure ptr -> bool
(*Not implemented gtk_action_set_accel_group type object not implemented*)
val set_accel_path:
  t structure ptr -> string -> unit
val set_always_show_image:
  t structure ptr -> bool -> unit
(*Not implemented gtk_action_set_gicon type interface not implemented*)
val set_icon_name:
  t structure ptr -> string -> unit
val set_is_important:
  t structure ptr -> bool -> unit
val set_label:
  t structure ptr -> string -> unit
val set_sensitive:
  t structure ptr -> bool -> unit
val set_short_label:
  t structure ptr -> string -> unit
val set_stock_id:
  t structure ptr -> string -> unit
val set_tooltip:
  t structure ptr -> string -> unit
val set_visible:
  t structure ptr -> bool -> unit
val set_visible_horizontal:
  t structure ptr -> bool -> unit
val set_visible_vertical:
  t structure ptr -> bool -> unit
val unblock_activate:
  t structure ptr -> unit
