open Ctypes

type t
val t_typ : t typ

val create:
  string -> string option -> string option -> string option -> t
val activate:
  t -> unit
val block_activate:
  t -> unit
val connect_accelerator:
  t -> unit
val create_icon:
  t -> int32 -> Widget.t
val create_menu:
  t -> Widget.t
val create_menu_item:
  t -> Widget.t
val create_tool_item:
  t -> Widget.t
val disconnect_accelerator:
  t -> unit
val get_accel_closure:
  t -> Closure.t structure ptr
val get_accel_path:
  t -> string option
val get_always_show_image:
  t -> bool
(*Not implemented gtk_action_get_gicon return type interface not handled*)
val get_icon_name:
  t -> string option
val get_is_important:
  t -> bool
val get_label:
  t -> string option
val get_name:
  t -> string option
val get_proxies:
  t -> SList.t structure ptr
val get_sensitive:
  t -> bool
val get_short_label:
  t -> string option
val get_stock_id:
  t -> string option
val get_tooltip:
  t -> string option
val get_visible:
  t -> bool
val get_visible_horizontal:
  t -> bool
val get_visible_vertical:
  t -> bool
val is_sensitive:
  t -> bool
val is_visible:
  t -> bool
val set_accel_group:
  t -> Accel_group.t -> unit
val set_accel_path:
  t -> string -> unit
val set_always_show_image:
  t -> bool -> unit
(*Not implemented gtk_action_set_gicon type interface not implemented*)
val set_icon_name:
  t -> string -> unit
val set_is_important:
  t -> bool -> unit
val set_label:
  t -> string -> unit
val set_sensitive:
  t -> bool -> unit
val set_short_label:
  t -> string -> unit
val set_stock_id:
  t -> string -> unit
val set_tooltip:
  t -> string -> unit
val set_visible:
  t -> bool -> unit
val set_visible_horizontal:
  t -> bool -> unit
val set_visible_vertical:
  t -> bool -> unit
val unblock_activate:
  t -> unit
