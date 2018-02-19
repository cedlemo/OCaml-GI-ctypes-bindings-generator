open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tool_palette_new return type object not handled*)
let get_drag_target_group =
  foreign "gtk_tool_palette_get_drag_target_group" (void @-> returning (ptr Target_entry.t_typ))
let get_drag_target_item =
  foreign "gtk_tool_palette_get_drag_target_item" (void @-> returning (ptr Target_entry.t_typ))
(*Not implemented gtk_tool_palette_add_drag_dest type object not implemented*)
(*Not implemented gtk_tool_palette_get_drag_item return type object not handled*)
(*Not implemented gtk_tool_palette_get_drop_group return type object not handled*)
(*Not implemented gtk_tool_palette_get_drop_item return type object not handled*)
(*Not implemented gtk_tool_palette_get_exclusive type object not implemented*)
(*Not implemented gtk_tool_palette_get_expand type object not implemented*)
(*Not implemented gtk_tool_palette_get_group_position type object not implemented*)
(*Not implemented gtk_tool_palette_get_hadjustment return type object not handled*)
let get_icon_size =
  foreign "gtk_tool_palette_get_icon_size" (ptr t_typ @-> returning (int32_t))
let get_style =
  foreign "gtk_tool_palette_get_style" (ptr t_typ @-> returning (Toolbar_style.t_view))
(*Not implemented gtk_tool_palette_get_vadjustment return type object not handled*)
let set_drag_source =
  foreign "gtk_tool_palette_set_drag_source" (ptr t_typ @-> Tool_palette_drag_targets.t_list_view @-> returning (void))
(*Not implemented gtk_tool_palette_set_exclusive type object not implemented*)
(*Not implemented gtk_tool_palette_set_expand type object not implemented*)
(*Not implemented gtk_tool_palette_set_group_position type object not implemented*)
let set_icon_size =
  foreign "gtk_tool_palette_set_icon_size" (ptr t_typ @-> int32_t @-> returning (void))
let set_style =
  foreign "gtk_tool_palette_set_style" (ptr t_typ @-> Toolbar_style.t_view @-> returning (void))
let unset_icon_size =
  foreign "gtk_tool_palette_unset_icon_size" (ptr t_typ @-> returning (void))
let unset_style =
  foreign "gtk_tool_palette_unset_style" (ptr t_typ @-> returning (void))
