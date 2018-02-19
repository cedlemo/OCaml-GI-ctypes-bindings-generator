open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_flow_box_new return type object not handled*)
(*Not implemented gtk_flow_box_bind_model type interface not implemented*)
val get_activate_on_single_click:
  t structure ptr -> bool
(*Not implemented gtk_flow_box_get_child_at_index return type object not handled*)
(*Not implemented gtk_flow_box_get_child_at_pos return type object not handled*)
val get_column_spacing:
  t structure ptr -> Unsigned.uint32
val get_homogeneous:
  t structure ptr -> bool
val get_max_children_per_line:
  t structure ptr -> Unsigned.uint32
val get_min_children_per_line:
  t structure ptr -> Unsigned.uint32
val get_row_spacing:
  t structure ptr -> Unsigned.uint32
val get_selected_children:
  t structure ptr -> List.t structure ptr
val get_selection_mode:
  t structure ptr -> Selection_mode.t
(*Not implemented gtk_flow_box_insert type object not implemented*)
val invalidate_filter:
  t structure ptr -> unit
val invalidate_sort:
  t structure ptr -> unit
val select_all:
  t structure ptr -> unit
(*Not implemented gtk_flow_box_select_child type object not implemented*)
(*Not implemented gtk_flow_box_selected_foreach type callback not implemented*)
val set_activate_on_single_click:
  t structure ptr -> bool -> unit
val set_column_spacing:
  t structure ptr -> Unsigned.uint32 -> unit
(*Not implemented gtk_flow_box_set_filter_func type callback not implemented*)
(*Not implemented gtk_flow_box_set_hadjustment type object not implemented*)
val set_homogeneous:
  t structure ptr -> bool -> unit
val set_max_children_per_line:
  t structure ptr -> Unsigned.uint32 -> unit
val set_min_children_per_line:
  t structure ptr -> Unsigned.uint32 -> unit
val set_row_spacing:
  t structure ptr -> Unsigned.uint32 -> unit
val set_selection_mode:
  t structure ptr -> Selection_mode.t -> unit
(*Not implemented gtk_flow_box_set_sort_func type callback not implemented*)
(*Not implemented gtk_flow_box_set_vadjustment type object not implemented*)
val unselect_all:
  t structure ptr -> unit
(*Not implemented gtk_flow_box_unselect_child type object not implemented*)
