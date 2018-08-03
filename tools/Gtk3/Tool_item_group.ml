open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_tool_item_group_new" (string @-> returning (ptr Widget.t_typ))
let get_collapsed =
  foreign "gtk_tool_item_group_get_collapsed" (t_typ @-> returning (bool))
let get_drop_item =
  foreign "gtk_tool_item_group_get_drop_item" (t_typ @-> int32_t @-> int32_t @-> returning (ptr Tool_item.t_typ))
let get_ellipsize =
  foreign "gtk_tool_item_group_get_ellipsize" (t_typ @-> returning (Ellipsize_mode.t_view))
let get_header_relief =
  foreign "gtk_tool_item_group_get_header_relief" (t_typ @-> returning (Relief_style.t_view))
let get_item_position =
  foreign "gtk_tool_item_group_get_item_position" (t_typ @-> ptr Tool_item.t_typ @-> returning (int32_t))
let get_label =
  foreign "gtk_tool_item_group_get_label" (t_typ @-> returning (string_opt))
let get_label_widget =
  foreign "gtk_tool_item_group_get_label_widget" (t_typ @-> returning (ptr Widget.t_typ))
let get_n_items =
  foreign "gtk_tool_item_group_get_n_items" (t_typ @-> returning (uint32_t))
let get_nth_item =
  foreign "gtk_tool_item_group_get_nth_item" (t_typ @-> uint32_t @-> returning (ptr Tool_item.t_typ))
let insert =
  foreign "gtk_tool_item_group_insert" (t_typ @-> ptr Tool_item.t_typ @-> int32_t @-> returning (void))
let set_collapsed =
  foreign "gtk_tool_item_group_set_collapsed" (t_typ @-> bool @-> returning (void))
let set_ellipsize =
  foreign "gtk_tool_item_group_set_ellipsize" (t_typ @-> Ellipsize_mode.t_view @-> returning (void))
let set_header_relief =
  foreign "gtk_tool_item_group_set_header_relief" (t_typ @-> Relief_style.t_view @-> returning (void))
let set_item_position =
  foreign "gtk_tool_item_group_set_item_position" (t_typ @-> ptr Tool_item.t_typ @-> int32_t @-> returning (void))
let set_label =
  foreign "gtk_tool_item_group_set_label" (t_typ @-> string @-> returning (void))
let set_label_widget =
  foreign "gtk_tool_item_group_set_label_widget" (t_typ @-> ptr Widget.t_typ @-> returning (void))
