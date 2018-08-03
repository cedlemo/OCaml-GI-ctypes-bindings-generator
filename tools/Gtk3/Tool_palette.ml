open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_tool_palette_new" (void @-> returning (ptr Widget.t_typ))
let get_drag_target_group =
  foreign "gtk_tool_palette_get_drag_target_group" (void @-> returning (ptr Target_entry.t_typ))
let get_drag_target_item =
  foreign "gtk_tool_palette_get_drag_target_item" (void @-> returning (ptr Target_entry.t_typ))
let add_drag_dest =
  foreign "gtk_tool_palette_add_drag_dest" (t_typ @-> ptr Widget.t_typ @-> Dest_defaults.t_list_view @-> Tool_palette_drag_targets.t_list_view @-> Drag_action.t_list_view @-> returning (void))
let get_drag_item =
  foreign "gtk_tool_palette_get_drag_item" (t_typ @-> ptr Selection_data.t_typ @-> returning (ptr Widget.t_typ))
let get_drop_group =
  foreign "gtk_tool_palette_get_drop_group" (t_typ @-> int32_t @-> int32_t @-> returning (ptr_opt Tool_item_group.t_typ))
let get_drop_item =
  foreign "gtk_tool_palette_get_drop_item" (t_typ @-> int32_t @-> int32_t @-> returning (ptr_opt Tool_item.t_typ))
let get_exclusive =
  foreign "gtk_tool_palette_get_exclusive" (t_typ @-> ptr Tool_item_group.t_typ @-> returning (bool))
let get_expand =
  foreign "gtk_tool_palette_get_expand" (t_typ @-> ptr Tool_item_group.t_typ @-> returning (bool))
let get_group_position =
  foreign "gtk_tool_palette_get_group_position" (t_typ @-> ptr Tool_item_group.t_typ @-> returning (int32_t))
let get_hadjustment =
  foreign "gtk_tool_palette_get_hadjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let get_icon_size =
  foreign "gtk_tool_palette_get_icon_size" (t_typ @-> returning (int32_t))
let get_style =
  foreign "gtk_tool_palette_get_style" (t_typ @-> returning (Toolbar_style.t_view))
let get_vadjustment =
  foreign "gtk_tool_palette_get_vadjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let set_drag_source =
  foreign "gtk_tool_palette_set_drag_source" (t_typ @-> Tool_palette_drag_targets.t_list_view @-> returning (void))
let set_exclusive =
  foreign "gtk_tool_palette_set_exclusive" (t_typ @-> ptr Tool_item_group.t_typ @-> bool @-> returning (void))
let set_expand =
  foreign "gtk_tool_palette_set_expand" (t_typ @-> ptr Tool_item_group.t_typ @-> bool @-> returning (void))
let set_group_position =
  foreign "gtk_tool_palette_set_group_position" (t_typ @-> ptr Tool_item_group.t_typ @-> int32_t @-> returning (void))
let set_icon_size =
  foreign "gtk_tool_palette_set_icon_size" (t_typ @-> int32_t @-> returning (void))
let set_style =
  foreign "gtk_tool_palette_set_style" (t_typ @-> Toolbar_style.t_view @-> returning (void))
let unset_icon_size =
  foreign "gtk_tool_palette_unset_icon_size" (t_typ @-> returning (void))
let unset_style =
  foreign "gtk_tool_palette_unset_style" (t_typ @-> returning (void))
