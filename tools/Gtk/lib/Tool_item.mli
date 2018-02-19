open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tool_item_new return type object not handled*)
val get_ellipsize_mode:
  t structure ptr -> Ellipsize_mode.t
val get_expand:
  t structure ptr -> bool
val get_homogeneous:
  t structure ptr -> bool
val get_icon_size:
  t structure ptr -> int32
val get_is_important:
  t structure ptr -> bool
val get_orientation:
  t structure ptr -> Orientation.t
(*Not implemented gtk_tool_item_get_proxy_menu_item return type object not handled*)
val get_relief_style:
  t structure ptr -> Relief_style.t
val get_text_alignment:
  t structure ptr -> float
val get_text_orientation:
  t structure ptr -> Orientation.t
(*Not implemented gtk_tool_item_get_text_size_group return type object not handled*)
val get_toolbar_style:
  t structure ptr -> Toolbar_style.t
val get_use_drag_window:
  t structure ptr -> bool
val get_visible_horizontal:
  t structure ptr -> bool
val get_visible_vertical:
  t structure ptr -> bool
val rebuild_menu:
  t structure ptr -> unit
(*Not implemented gtk_tool_item_retrieve_proxy_menu_item return type object not handled*)
val set_expand:
  t structure ptr -> bool -> unit
val set_homogeneous:
  t structure ptr -> bool -> unit
val set_is_important:
  t structure ptr -> bool -> unit
(*Not implemented gtk_tool_item_set_proxy_menu_item type object not implemented*)
val set_tooltip_markup:
  t structure ptr -> string -> unit
val set_tooltip_text:
  t structure ptr -> string -> unit
val set_use_drag_window:
  t structure ptr -> bool -> unit
val set_visible_horizontal:
  t structure ptr -> bool -> unit
val set_visible_vertical:
  t structure ptr -> bool -> unit
val toolbar_reconfigured:
  t structure ptr -> unit
