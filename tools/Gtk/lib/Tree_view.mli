open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tree_view_new return type object not handled*)
(*Not implemented gtk_tree_view_new_with_model type interface not implemented*)
(*Not implemented gtk_tree_view_append_column type object not implemented*)
val collapse_all:
  t structure ptr -> unit
val collapse_row:
  t structure ptr -> Tree_path.t structure ptr -> bool
val columns_autosize:
  t structure ptr -> unit
val convert_bin_window_to_tree_coords :
  t structure ptr -> int32 -> int32 -> (int32 * int32)
val convert_bin_window_to_widget_coords :
  t structure ptr -> int32 -> int32 -> (int32 * int32)
val convert_tree_to_bin_window_coords :
  t structure ptr -> int32 -> int32 -> (int32 * int32)
val convert_tree_to_widget_coords :
  t structure ptr -> int32 -> int32 -> (int32 * int32)
val convert_widget_to_bin_window_coords :
  t structure ptr -> int32 -> int32 -> (int32 * int32)
val convert_widget_to_tree_coords :
  t structure ptr -> int32 -> int32 -> (int32 * int32)
val create_row_drag_icon:
  t structure ptr -> Tree_path.t structure ptr -> Surface.t structure ptr
(*Not implemented gtk_tree_view_enable_model_drag_dest type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_tree_view_enable_model_drag_source type C Array type for Types.Array tag not implemented*)
val expand_all:
  t structure ptr -> unit
val expand_row:
  t structure ptr -> Tree_path.t structure ptr -> bool -> bool
val expand_to_path:
  t structure ptr -> Tree_path.t structure ptr -> unit
val get_activate_on_single_click:
  t structure ptr -> bool
(*Not implemented gtk_tree_view_get_background_area type object not implemented*)
(*Not implemented gtk_tree_view_get_bin_window return type object not handled*)
(*Not implemented gtk_tree_view_get_cell_area type object not implemented*)
(*Not implemented gtk_tree_view_get_column return type object not handled*)
val get_columns:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_tree_view_get_cursor type object not implemented*)
val get_dest_row_at_pos :
  t structure ptr -> int32 -> int32 -> (bool * Tree_path.t structure ptr option * Tree_view_drop_position.t)
val get_drag_dest_row :
  t structure ptr -> (Tree_path.t structure ptr option * Tree_view_drop_position.t)
val get_enable_search:
  t structure ptr -> bool
val get_enable_tree_lines:
  t structure ptr -> bool
(*Not implemented gtk_tree_view_get_expander_column return type object not handled*)
val get_fixed_height_mode:
  t structure ptr -> bool
val get_grid_lines:
  t structure ptr -> Tree_view_grid_lines.t
(*Not implemented gtk_tree_view_get_hadjustment return type object not handled*)
val get_headers_clickable:
  t structure ptr -> bool
val get_headers_visible:
  t structure ptr -> bool
val get_hover_expand:
  t structure ptr -> bool
val get_hover_selection:
  t structure ptr -> bool
val get_level_indentation:
  t structure ptr -> int32
(*Not implemented gtk_tree_view_get_model return type interface not handled*)
val get_n_columns:
  t structure ptr -> Unsigned.uint32
(*Not implemented gtk_tree_view_get_path_at_pos type object not implemented*)
val get_reorderable:
  t structure ptr -> bool
val get_rubber_banding:
  t structure ptr -> bool
val get_rules_hint:
  t structure ptr -> bool
val get_search_column:
  t structure ptr -> int32
(*Not implemented gtk_tree_view_get_search_entry return type object not handled*)
(*Not implemented gtk_tree_view_get_selection return type object not handled*)
val get_show_expanders:
  t structure ptr -> bool
val get_tooltip_column:
  t structure ptr -> int32
(*Not implemented gtk_tree_view_get_tooltip_context type interface not implemented*)
(*Not implemented gtk_tree_view_get_vadjustment return type object not handled*)
val get_visible_range :
  t structure ptr -> (bool * Tree_path.t structure ptr * Tree_path.t structure ptr)
val get_visible_rect :
  t structure ptr -> (Rectangle.t structure)
(*Not implemented gtk_tree_view_insert_column type object not implemented*)
(*Not implemented gtk_tree_view_insert_column_with_data_func type object not implemented*)
(*Not implemented gtk_tree_view_is_blank_at_pos type object not implemented*)
val is_rubber_banding_active:
  t structure ptr -> bool
(*Not implemented gtk_tree_view_map_expanded_rows type callback not implemented*)
(*Not implemented gtk_tree_view_move_column_after type object not implemented*)
(*Not implemented gtk_tree_view_remove_column type object not implemented*)
(*Not implemented gtk_tree_view_row_activated type object not implemented*)
val row_expanded:
  t structure ptr -> Tree_path.t structure ptr -> bool
(*Not implemented gtk_tree_view_scroll_to_cell type object not implemented*)
val scroll_to_point:
  t structure ptr -> int32 -> int32 -> unit
val set_activate_on_single_click:
  t structure ptr -> bool -> unit
(*Not implemented gtk_tree_view_set_column_drag_function type callback not implemented*)
(*Not implemented gtk_tree_view_set_cursor type object not implemented*)
(*Not implemented gtk_tree_view_set_cursor_on_cell type object not implemented*)
(*Not implemented gtk_tree_view_set_destroy_count_func type callback not implemented*)
val set_drag_dest_row:
  t structure ptr -> Tree_path.t structure ptr option -> Tree_view_drop_position.t -> unit
val set_enable_search:
  t structure ptr -> bool -> unit
val set_enable_tree_lines:
  t structure ptr -> bool -> unit
(*Not implemented gtk_tree_view_set_expander_column type object not implemented*)
val set_fixed_height_mode:
  t structure ptr -> bool -> unit
val set_grid_lines:
  t structure ptr -> Tree_view_grid_lines.t -> unit
(*Not implemented gtk_tree_view_set_hadjustment type object not implemented*)
val set_headers_clickable:
  t structure ptr -> bool -> unit
val set_headers_visible:
  t structure ptr -> bool -> unit
val set_hover_expand:
  t structure ptr -> bool -> unit
val set_hover_selection:
  t structure ptr -> bool -> unit
val set_level_indentation:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_tree_view_set_model type interface not implemented*)
val set_reorderable:
  t structure ptr -> bool -> unit
(*Not implemented gtk_tree_view_set_row_separator_func type callback not implemented*)
val set_rubber_banding:
  t structure ptr -> bool -> unit
val set_rules_hint:
  t structure ptr -> bool -> unit
val set_search_column:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_tree_view_set_search_entry type object not implemented*)
(*Not implemented gtk_tree_view_set_search_equal_func type callback not implemented*)
(*Not implemented gtk_tree_view_set_search_position_func type callback not implemented*)
val set_show_expanders:
  t structure ptr -> bool -> unit
(*Not implemented gtk_tree_view_set_tooltip_cell type object not implemented*)
val set_tooltip_column:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_tree_view_set_tooltip_row type object not implemented*)
(*Not implemented gtk_tree_view_set_vadjustment type object not implemented*)
val unset_rows_drag_dest:
  t structure ptr -> unit
val unset_rows_drag_source:
  t structure ptr -> unit
