open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tool_item_new return type object not handled*)
let get_ellipsize_mode =
  foreign "gtk_tool_item_get_ellipsize_mode" (ptr t_typ @-> returning (Ellipsize_mode.t_view))
let get_expand =
  foreign "gtk_tool_item_get_expand" (ptr t_typ @-> returning (bool))
let get_homogeneous =
  foreign "gtk_tool_item_get_homogeneous" (ptr t_typ @-> returning (bool))
let get_icon_size =
  foreign "gtk_tool_item_get_icon_size" (ptr t_typ @-> returning (int32_t))
let get_is_important =
  foreign "gtk_tool_item_get_is_important" (ptr t_typ @-> returning (bool))
let get_orientation =
  foreign "gtk_tool_item_get_orientation" (ptr t_typ @-> returning (Orientation.t_view))
(*Not implemented gtk_tool_item_get_proxy_menu_item return type object not handled*)
let get_relief_style =
  foreign "gtk_tool_item_get_relief_style" (ptr t_typ @-> returning (Relief_style.t_view))
let get_text_alignment =
  foreign "gtk_tool_item_get_text_alignment" (ptr t_typ @-> returning (float))
let get_text_orientation =
  foreign "gtk_tool_item_get_text_orientation" (ptr t_typ @-> returning (Orientation.t_view))
(*Not implemented gtk_tool_item_get_text_size_group return type object not handled*)
let get_toolbar_style =
  foreign "gtk_tool_item_get_toolbar_style" (ptr t_typ @-> returning (Toolbar_style.t_view))
let get_use_drag_window =
  foreign "gtk_tool_item_get_use_drag_window" (ptr t_typ @-> returning (bool))
let get_visible_horizontal =
  foreign "gtk_tool_item_get_visible_horizontal" (ptr t_typ @-> returning (bool))
let get_visible_vertical =
  foreign "gtk_tool_item_get_visible_vertical" (ptr t_typ @-> returning (bool))
let rebuild_menu =
  foreign "gtk_tool_item_rebuild_menu" (ptr t_typ @-> returning (void))
(*Not implemented gtk_tool_item_retrieve_proxy_menu_item return type object not handled*)
let set_expand =
  foreign "gtk_tool_item_set_expand" (ptr t_typ @-> bool @-> returning (void))
let set_homogeneous =
  foreign "gtk_tool_item_set_homogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_is_important =
  foreign "gtk_tool_item_set_is_important" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_tool_item_set_proxy_menu_item type object not implemented*)
let set_tooltip_markup =
  foreign "gtk_tool_item_set_tooltip_markup" (ptr t_typ @-> string @-> returning (void))
let set_tooltip_text =
  foreign "gtk_tool_item_set_tooltip_text" (ptr t_typ @-> string @-> returning (void))
let set_use_drag_window =
  foreign "gtk_tool_item_set_use_drag_window" (ptr t_typ @-> bool @-> returning (void))
let set_visible_horizontal =
  foreign "gtk_tool_item_set_visible_horizontal" (ptr t_typ @-> bool @-> returning (void))
let set_visible_vertical =
  foreign "gtk_tool_item_set_visible_vertical" (ptr t_typ @-> bool @-> returning (void))
let toolbar_reconfigured =
  foreign "gtk_tool_item_toolbar_reconfigured" (ptr t_typ @-> returning (void))
