open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tool_palette_new return type object not handled*)
val get_drag_target_group:
  unit -> Target_entry.t structure ptr
val get_drag_target_item:
  unit -> Target_entry.t structure ptr
(*Not implemented gtk_tool_palette_add_drag_dest type object not implemented*)
(*Not implemented gtk_tool_palette_get_drag_item return type object not handled*)
(*Not implemented gtk_tool_palette_get_drop_group return type object not handled*)
(*Not implemented gtk_tool_palette_get_drop_item return type object not handled*)
(*Not implemented gtk_tool_palette_get_exclusive type object not implemented*)
(*Not implemented gtk_tool_palette_get_expand type object not implemented*)
(*Not implemented gtk_tool_palette_get_group_position type object not implemented*)
(*Not implemented gtk_tool_palette_get_hadjustment return type object not handled*)
val get_icon_size:
  t structure ptr -> int32
val get_style:
  t structure ptr -> Toolbar_style.t
(*Not implemented gtk_tool_palette_get_vadjustment return type object not handled*)
val set_drag_source:
  t structure ptr -> Tool_palette_drag_targets.t_list -> unit
(*Not implemented gtk_tool_palette_set_exclusive type object not implemented*)
(*Not implemented gtk_tool_palette_set_expand type object not implemented*)
(*Not implemented gtk_tool_palette_set_group_position type object not implemented*)
val set_icon_size:
  t structure ptr -> int32 -> unit
val set_style:
  t structure ptr -> Toolbar_style.t -> unit
val unset_icon_size:
  t structure ptr -> unit
val unset_style:
  t structure ptr -> unit
