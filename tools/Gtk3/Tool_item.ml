open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_tool_item_new" (void @-> returning (t_typ))
let get_ellipsize_mode =
  foreign "gtk_tool_item_get_ellipsize_mode" (t_typ @-> returning (Ellipsize_mode.t_view))
let get_expand =
  foreign "gtk_tool_item_get_expand" (t_typ @-> returning (bool))
let get_homogeneous =
  foreign "gtk_tool_item_get_homogeneous" (t_typ @-> returning (bool))
let get_icon_size =
  foreign "gtk_tool_item_get_icon_size" (t_typ @-> returning (int32_t))
let get_is_important =
  foreign "gtk_tool_item_get_is_important" (t_typ @-> returning (bool))
let get_orientation =
  foreign "gtk_tool_item_get_orientation" (t_typ @-> returning (Orientation.t_view))
let get_proxy_menu_item =
  foreign "gtk_tool_item_get_proxy_menu_item" (t_typ @-> string @-> returning (Widget.t_typ))
let get_relief_style =
  foreign "gtk_tool_item_get_relief_style" (t_typ @-> returning (Relief_style.t_view))
let get_text_alignment =
  foreign "gtk_tool_item_get_text_alignment" (t_typ @-> returning (float))
let get_text_orientation =
  foreign "gtk_tool_item_get_text_orientation" (t_typ @-> returning (Orientation.t_view))
let get_text_size_group =
  foreign "gtk_tool_item_get_text_size_group" (t_typ @-> returning (Size_group.t_typ))
let get_toolbar_style =
  foreign "gtk_tool_item_get_toolbar_style" (t_typ @-> returning (Toolbar_style.t_view))
let get_use_drag_window =
  foreign "gtk_tool_item_get_use_drag_window" (t_typ @-> returning (bool))
let get_visible_horizontal =
  foreign "gtk_tool_item_get_visible_horizontal" (t_typ @-> returning (bool))
let get_visible_vertical =
  foreign "gtk_tool_item_get_visible_vertical" (t_typ @-> returning (bool))
let rebuild_menu =
  foreign "gtk_tool_item_rebuild_menu" (t_typ @-> returning (void))
let retrieve_proxy_menu_item =
  foreign "gtk_tool_item_retrieve_proxy_menu_item" (t_typ @-> returning (Widget.t_typ))
let set_expand =
  foreign "gtk_tool_item_set_expand" (t_typ @-> bool @-> returning (void))
let set_homogeneous =
  foreign "gtk_tool_item_set_homogeneous" (t_typ @-> bool @-> returning (void))
let set_is_important =
  foreign "gtk_tool_item_set_is_important" (t_typ @-> bool @-> returning (void))
let set_proxy_menu_item =
  foreign "gtk_tool_item_set_proxy_menu_item" (t_typ @-> string @-> Widget.t_typ @-> returning (void))
let set_tooltip_markup =
  foreign "gtk_tool_item_set_tooltip_markup" (t_typ @-> string @-> returning (void))
let set_tooltip_text =
  foreign "gtk_tool_item_set_tooltip_text" (t_typ @-> string @-> returning (void))
let set_use_drag_window =
  foreign "gtk_tool_item_set_use_drag_window" (t_typ @-> bool @-> returning (void))
let set_visible_horizontal =
  foreign "gtk_tool_item_set_visible_horizontal" (t_typ @-> bool @-> returning (void))
let set_visible_vertical =
  foreign "gtk_tool_item_set_visible_vertical" (t_typ @-> bool @-> returning (void))
let toolbar_reconfigured =
  foreign "gtk_tool_item_toolbar_reconfigured" (t_typ @-> returning (void))
