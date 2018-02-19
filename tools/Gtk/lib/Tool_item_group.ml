open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tool_item_group_new return type object not handled*)
let get_collapsed =
  foreign "gtk_tool_item_group_get_collapsed" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_tool_item_group_get_drop_item return type object not handled*)
let get_ellipsize =
  foreign "gtk_tool_item_group_get_ellipsize" (ptr t_typ @-> returning (Ellipsize_mode.t_view))
let get_header_relief =
  foreign "gtk_tool_item_group_get_header_relief" (ptr t_typ @-> returning (Relief_style.t_view))
(*Not implemented gtk_tool_item_group_get_item_position type object not implemented*)
let get_label =
  foreign "gtk_tool_item_group_get_label" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_tool_item_group_get_label_widget return type object not handled*)
let get_n_items =
  foreign "gtk_tool_item_group_get_n_items" (ptr t_typ @-> returning (uint32_t))
(*Not implemented gtk_tool_item_group_get_nth_item return type object not handled*)
(*Not implemented gtk_tool_item_group_insert type object not implemented*)
let set_collapsed =
  foreign "gtk_tool_item_group_set_collapsed" (ptr t_typ @-> bool @-> returning (void))
let set_ellipsize =
  foreign "gtk_tool_item_group_set_ellipsize" (ptr t_typ @-> Ellipsize_mode.t_view @-> returning (void))
let set_header_relief =
  foreign "gtk_tool_item_group_set_header_relief" (ptr t_typ @-> Relief_style.t_view @-> returning (void))
(*Not implemented gtk_tool_item_group_set_item_position type object not implemented*)
let set_label =
  foreign "gtk_tool_item_group_set_label" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_tool_item_group_set_label_widget type object not implemented*)
