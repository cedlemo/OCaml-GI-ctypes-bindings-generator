open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
(*Not implemented gtk_tree_view_new_with_model type interface not implemented*)
val append_column :
  t -> Tree_view_column.t -> int32
val collapse_all :
  t -> unit
val collapse_row :
  t -> Tree_path.t structure ptr -> bool
val columns_autosize :
  t -> unit
val convert_bin_window_to_tree_coords :
  t -> int32 -> int32 -> (int32 * int32)
val convert_bin_window_to_widget_coords :
  t -> int32 -> int32 -> (int32 * int32)
val convert_tree_to_bin_window_coords :
  t -> int32 -> int32 -> (int32 * int32)
val convert_tree_to_widget_coords :
  t -> int32 -> int32 -> (int32 * int32)
val convert_widget_to_bin_window_coords :
  t -> int32 -> int32 -> (int32 * int32)
val convert_widget_to_tree_coords :
  t -> int32 -> int32 -> (int32 * int32)
val create_row_drag_icon :
  t -> Tree_path.t structure ptr -> Surface.t structure ptr
(*Not implemented gtk_tree_view_enable_model_drag_dest type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_tree_view_enable_model_drag_source type C Array type for Types.Array tag not implemented*)
val expand_all :
  t -> unit
val expand_row :
  t -> Tree_path.t structure ptr -> bool -> bool
val expand_to_path :
  t -> Tree_path.t structure ptr -> unit
val get_activate_on_single_click :
  t -> bool
val get_background_area :
  t -> Tree_path.t structure ptr option -> Tree_view_column.t -> (Rectangle.t structure)
val get_bin_window :
  t -> Window.t
val get_cell_area :
  t -> Tree_path.t structure ptr option -> Tree_view_column.t -> (Rectangle.t structure)
val get_column :
  t -> int32 -> Tree_view_column.t
val get_columns :
  t -> List.t structure ptr
val get_cursor :
  t -> (Tree_path.t structure ptr option * Tree_view_column.t)
val get_dest_row_at_pos :
  t -> int32 -> int32 -> (bool * Tree_path.t structure ptr option * Tree_view_drop_position.t)
val get_drag_dest_row :
  t -> (Tree_path.t structure ptr option * Tree_view_drop_position.t)
val get_enable_search :
  t -> bool
val get_enable_tree_lines :
  t -> bool
val get_expander_column :
  t -> Tree_view_column.t
val get_fixed_height_mode :
  t -> bool
val get_grid_lines :
  t -> Tree_view_grid_lines.t
val get_hadjustment :
  t -> Adjustment.t
val get_headers_clickable :
  t -> bool
val get_headers_visible :
  t -> bool
val get_hover_expand :
  t -> bool
val get_hover_selection :
  t -> bool
val get_level_indentation :
  t -> int32
(*Not implemented gtk_tree_view_get_model return type interface not handled*)
val get_n_columns :
  t -> Unsigned.uint32
val get_path_at_pos :
  t -> int32 -> int32 -> (bool * Tree_path.t structure ptr option * Tree_view_column.t * int32 * int32)
val get_reorderable :
  t -> bool
val get_rubber_banding :
  t -> bool
val get_rules_hint :
  t -> bool
val get_search_column :
  t -> int32
val get_search_entry :
  t -> Entry.t
val get_selection :
  t -> Tree_selection.t
val get_show_expanders :
  t -> bool
val get_tooltip_column :
  t -> int32
(*Not implemented gtk_tree_view_get_tooltip_context type interface not implemented*)
val get_vadjustment :
  t -> Adjustment.t
val get_visible_range :
  t -> (bool * Tree_path.t structure ptr * Tree_path.t structure ptr)
val get_visible_rect :
  t -> (Rectangle.t structure)
val insert_column :
  t -> Tree_view_column.t -> int32 -> int32
(*Not implemented gtk_tree_view_insert_column_with_data_func type callback not implemented*)
val is_blank_at_pos :
  t -> int32 -> int32 -> (bool * Tree_path.t structure ptr * Tree_view_column.t * int32 * int32)
val is_rubber_banding_active :
  t -> bool
(*Not implemented gtk_tree_view_map_expanded_rows type callback not implemented*)
val move_column_after :
  t -> Tree_view_column.t -> Tree_view_column.t -> unit
val remove_column :
  t -> Tree_view_column.t -> int32
val row_activated :
  t -> Tree_path.t structure ptr -> Tree_view_column.t -> unit
val row_expanded :
  t -> Tree_path.t structure ptr -> bool
val scroll_to_cell :
  t -> Tree_path.t structure ptr option -> Tree_view_column.t -> bool -> float -> float -> unit
val scroll_to_point :
  t -> int32 -> int32 -> unit
val set_activate_on_single_click :
  t -> bool -> unit
(*Not implemented gtk_tree_view_set_column_drag_function type callback not implemented*)
val set_cursor :
  t -> Tree_path.t structure ptr -> Tree_view_column.t -> bool -> unit
val set_cursor_on_cell :
  t -> Tree_path.t structure ptr -> Tree_view_column.t -> Cell_renderer.t -> bool -> unit
(*Not implemented gtk_tree_view_set_destroy_count_func type callback not implemented*)
val set_drag_dest_row :
  t -> Tree_path.t structure ptr option -> Tree_view_drop_position.t -> unit
val set_enable_search :
  t -> bool -> unit
val set_enable_tree_lines :
  t -> bool -> unit
val set_expander_column :
  t -> Tree_view_column.t -> unit
val set_fixed_height_mode :
  t -> bool -> unit
val set_grid_lines :
  t -> Tree_view_grid_lines.t -> unit
val set_hadjustment :
  t -> Adjustment.t -> unit
val set_headers_clickable :
  t -> bool -> unit
val set_headers_visible :
  t -> bool -> unit
val set_hover_expand :
  t -> bool -> unit
val set_hover_selection :
  t -> bool -> unit
val set_level_indentation :
  t -> int32 -> unit
(*Not implemented gtk_tree_view_set_model type interface not implemented*)
val set_reorderable :
  t -> bool -> unit
(*Not implemented gtk_tree_view_set_row_separator_func type callback not implemented*)
val set_rubber_banding :
  t -> bool -> unit
val set_rules_hint :
  t -> bool -> unit
val set_search_column :
  t -> int32 -> unit
val set_search_entry :
  t -> Entry.t -> unit
(*Not implemented gtk_tree_view_set_search_equal_func type callback not implemented*)
(*Not implemented gtk_tree_view_set_search_position_func type callback not implemented*)
val set_show_expanders :
  t -> bool -> unit
val set_tooltip_cell :
  t -> Tooltip.t -> Tree_path.t structure ptr option -> Tree_view_column.t -> Cell_renderer.t -> unit
val set_tooltip_column :
  t -> int32 -> unit
val set_tooltip_row :
  t -> Tooltip.t -> Tree_path.t structure ptr -> unit
val set_vadjustment :
  t -> Adjustment.t -> unit
val unset_rows_drag_dest :
  t -> unit
val unset_rows_drag_source :
  t -> unit
