open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val get_drag_target_group :
  unit -> Target_entry.t structure ptr
val get_drag_target_item :
  unit -> Target_entry.t structure ptr
val add_drag_dest :
  t -> Widget.t ptr -> Dest_defaults.t_list -> Tool_palette_drag_targets.t_list -> Drag_action.t_list -> unit
val get_drag_item :
  t -> Selection_data.t structure ptr -> Widget.t ptr
val get_drop_group :
  t -> int32 -> int32 -> Tool_item_group.t ptr option
val get_drop_item :
  t -> int32 -> int32 -> Tool_item.t ptr option
val get_exclusive :
  t -> Tool_item_group.t ptr -> bool
val get_expand :
  t -> Tool_item_group.t ptr -> bool
val get_group_position :
  t -> Tool_item_group.t ptr -> int32
val get_hadjustment :
  t -> Adjustment.t ptr
val get_icon_size :
  t -> int32
val get_style :
  t -> Toolbar_style.t
val get_vadjustment :
  t -> Adjustment.t ptr
val set_drag_source :
  t -> Tool_palette_drag_targets.t_list -> unit
val set_exclusive :
  t -> Tool_item_group.t ptr -> bool -> unit
val set_expand :
  t -> Tool_item_group.t ptr -> bool -> unit
val set_group_position :
  t -> Tool_item_group.t ptr -> int32 -> unit
val set_icon_size :
  t -> int32 -> unit
val set_style :
  t -> Toolbar_style.t -> unit
val unset_icon_size :
  t -> unit
val unset_style :
  t -> unit
