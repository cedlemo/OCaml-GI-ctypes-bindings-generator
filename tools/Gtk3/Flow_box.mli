open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
(*Not implemented gtk_flow_box_bind_model type interface not implemented*)
val get_activate_on_single_click :
  t -> bool
val get_child_at_index :
  t -> int32 -> Flow_box_child.t
val get_child_at_pos :
  t -> int32 -> int32 -> Flow_box_child.t
val get_column_spacing :
  t -> Unsigned.uint32
val get_homogeneous :
  t -> bool
val get_max_children_per_line :
  t -> Unsigned.uint32
val get_min_children_per_line :
  t -> Unsigned.uint32
val get_row_spacing :
  t -> Unsigned.uint32
val get_selected_children :
  t -> List.t structure ptr
val get_selection_mode :
  t -> Selection_mode.t
val insert :
  t -> Widget.t -> int32 -> unit
val invalidate_filter :
  t -> unit
val invalidate_sort :
  t -> unit
val select_all :
  t -> unit
val select_child :
  t -> Flow_box_child.t -> unit
(*Not implemented gtk_flow_box_selected_foreach type callback not implemented*)
val set_activate_on_single_click :
  t -> bool -> unit
val set_column_spacing :
  t -> Unsigned.uint32 -> unit
(*Not implemented gtk_flow_box_set_filter_func type callback not implemented*)
val set_hadjustment :
  t -> Adjustment.t -> unit
val set_homogeneous :
  t -> bool -> unit
val set_max_children_per_line :
  t -> Unsigned.uint32 -> unit
val set_min_children_per_line :
  t -> Unsigned.uint32 -> unit
val set_row_spacing :
  t -> Unsigned.uint32 -> unit
val set_selection_mode :
  t -> Selection_mode.t -> unit
(*Not implemented gtk_flow_box_set_sort_func type callback not implemented*)
val set_vadjustment :
  t -> Adjustment.t -> unit
val unselect_all :
  t -> unit
val unselect_child :
  t -> Flow_box_child.t -> unit
