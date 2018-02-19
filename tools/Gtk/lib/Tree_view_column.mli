open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tree_view_column_new return type object not handled*)
(*Not implemented gtk_tree_view_column_new_with_area type object not implemented*)
(*Not implemented gtk_tree_view_column_add_attribute type object not implemented*)
(*Not implemented gtk_tree_view_column_cell_get_position type object not implemented*)
val cell_get_size :
  t structure ptr -> Rectangle.t structure ptr option -> (int32 * int32 * int32 * int32)
val cell_is_visible:
  t structure ptr -> bool
(*Not implemented gtk_tree_view_column_cell_set_cell_data type interface not implemented*)
val clear:
  t structure ptr -> unit
(*Not implemented gtk_tree_view_column_clear_attributes type object not implemented*)
val clicked:
  t structure ptr -> unit
(*Not implemented gtk_tree_view_column_focus_cell type object not implemented*)
val get_alignment:
  t structure ptr -> float
(*Not implemented gtk_tree_view_column_get_button return type object not handled*)
val get_clickable:
  t structure ptr -> bool
val get_expand:
  t structure ptr -> bool
val get_fixed_width:
  t structure ptr -> int32
val get_max_width:
  t structure ptr -> int32
val get_min_width:
  t structure ptr -> int32
val get_reorderable:
  t structure ptr -> bool
val get_resizable:
  t structure ptr -> bool
val get_sizing:
  t structure ptr -> Tree_view_column_sizing.t
val get_sort_column_id:
  t structure ptr -> int32
val get_sort_indicator:
  t structure ptr -> bool
val get_sort_order:
  t structure ptr -> Sort_type.t
val get_spacing:
  t structure ptr -> int32
val get_title:
  t structure ptr -> string option
(*Not implemented gtk_tree_view_column_get_tree_view return type object not handled*)
val get_visible:
  t structure ptr -> bool
(*Not implemented gtk_tree_view_column_get_widget return type object not handled*)
val get_width:
  t structure ptr -> int32
val get_x_offset:
  t structure ptr -> int32
(*Not implemented gtk_tree_view_column_pack_end type object not implemented*)
(*Not implemented gtk_tree_view_column_pack_start type object not implemented*)
val queue_resize:
  t structure ptr -> unit
val set_alignment:
  t structure ptr -> float -> unit
(*Not implemented gtk_tree_view_column_set_cell_data_func type object not implemented*)
val set_clickable:
  t structure ptr -> bool -> unit
val set_expand:
  t structure ptr -> bool -> unit
val set_fixed_width:
  t structure ptr -> int32 -> unit
val set_max_width:
  t structure ptr -> int32 -> unit
val set_min_width:
  t structure ptr -> int32 -> unit
val set_reorderable:
  t structure ptr -> bool -> unit
val set_resizable:
  t structure ptr -> bool -> unit
val set_sizing:
  t structure ptr -> Tree_view_column_sizing.t -> unit
val set_sort_column_id:
  t structure ptr -> int32 -> unit
val set_sort_indicator:
  t structure ptr -> bool -> unit
val set_sort_order:
  t structure ptr -> Sort_type.t -> unit
val set_spacing:
  t structure ptr -> int32 -> unit
val set_title:
  t structure ptr -> string -> unit
val set_visible:
  t structure ptr -> bool -> unit
(*Not implemented gtk_tree_view_column_set_widget type object not implemented*)
