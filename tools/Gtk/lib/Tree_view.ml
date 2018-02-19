open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tree_view_new return type object not handled*)
(*Not implemented gtk_tree_view_new_with_model type interface not implemented*)
(*Not implemented gtk_tree_view_append_column type object not implemented*)
let collapse_all =
  foreign "gtk_tree_view_collapse_all" (ptr t_typ @-> returning (void))
let collapse_row =
  foreign "gtk_tree_view_collapse_row" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (bool))
let columns_autosize =
  foreign "gtk_tree_view_columns_autosize" (ptr t_typ @-> returning (void))
let convert_bin_window_to_tree_coords self bx by =
  let tx_ptr = allocate int32_t Int32.zero in
  let ty_ptr = allocate int32_t Int32.zero in
  let convert_bin_window_to_tree_coords_raw =
    foreign "gtk_tree_view_convert_bin_window_to_tree_coords" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_bin_window_to_tree_coords_raw self bx by tx_ptr ty_ptr in
  let tx = !@ tx_ptr in
  let ty = !@ ty_ptr in
  (tx, ty)
let convert_bin_window_to_widget_coords self bx by =
  let wx_ptr = allocate int32_t Int32.zero in
  let wy_ptr = allocate int32_t Int32.zero in
  let convert_bin_window_to_widget_coords_raw =
    foreign "gtk_tree_view_convert_bin_window_to_widget_coords" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_bin_window_to_widget_coords_raw self bx by wx_ptr wy_ptr in
  let wx = !@ wx_ptr in
  let wy = !@ wy_ptr in
  (wx, wy)
let convert_tree_to_bin_window_coords self tx ty =
  let bx_ptr = allocate int32_t Int32.zero in
  let by_ptr = allocate int32_t Int32.zero in
  let convert_tree_to_bin_window_coords_raw =
    foreign "gtk_tree_view_convert_tree_to_bin_window_coords" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_tree_to_bin_window_coords_raw self tx ty bx_ptr by_ptr in
  let bx = !@ bx_ptr in
  let by = !@ by_ptr in
  (bx, by)
let convert_tree_to_widget_coords self tx ty =
  let wx_ptr = allocate int32_t Int32.zero in
  let wy_ptr = allocate int32_t Int32.zero in
  let convert_tree_to_widget_coords_raw =
    foreign "gtk_tree_view_convert_tree_to_widget_coords" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_tree_to_widget_coords_raw self tx ty wx_ptr wy_ptr in
  let wx = !@ wx_ptr in
  let wy = !@ wy_ptr in
  (wx, wy)
let convert_widget_to_bin_window_coords self wx wy =
  let bx_ptr = allocate int32_t Int32.zero in
  let by_ptr = allocate int32_t Int32.zero in
  let convert_widget_to_bin_window_coords_raw =
    foreign "gtk_tree_view_convert_widget_to_bin_window_coords" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_widget_to_bin_window_coords_raw self wx wy bx_ptr by_ptr in
  let bx = !@ bx_ptr in
  let by = !@ by_ptr in
  (bx, by)
let convert_widget_to_tree_coords self wx wy =
  let tx_ptr = allocate int32_t Int32.zero in
  let ty_ptr = allocate int32_t Int32.zero in
  let convert_widget_to_tree_coords_raw =
    foreign "gtk_tree_view_convert_widget_to_tree_coords" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_widget_to_tree_coords_raw self wx wy tx_ptr ty_ptr in
  let tx = !@ tx_ptr in
  let ty = !@ ty_ptr in
  (tx, ty)
let create_row_drag_icon =
  foreign "gtk_tree_view_create_row_drag_icon" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (ptr Surface.t_typ))
(*Not implemented gtk_tree_view_enable_model_drag_dest type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_tree_view_enable_model_drag_source type C Array type for Types.Array tag not implemented*)
let expand_all =
  foreign "gtk_tree_view_expand_all" (ptr t_typ @-> returning (void))
let expand_row =
  foreign "gtk_tree_view_expand_row" (ptr t_typ @-> ptr Tree_path.t_typ @-> bool @-> returning (bool))
let expand_to_path =
  foreign "gtk_tree_view_expand_to_path" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let get_activate_on_single_click =
  foreign "gtk_tree_view_get_activate_on_single_click" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_tree_view_get_background_area type object not implemented*)
(*Not implemented gtk_tree_view_get_bin_window return type object not handled*)
(*Not implemented gtk_tree_view_get_cell_area type object not implemented*)
(*Not implemented gtk_tree_view_get_column return type object not handled*)
let get_columns =
  foreign "gtk_tree_view_get_columns" (ptr t_typ @-> returning (ptr List.t_typ))
(*Not implemented gtk_tree_view_get_cursor type object not implemented*)
let get_dest_row_at_pos self drag_x drag_y =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let pos_ptr = allocate Tree_view_drop_position.t_view (Tree_view_drop_position.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_dest_row_at_pos_raw =
    foreign "gtk_tree_view_get_dest_row_at_pos" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (ptr_opt Tree_path.t_typ) @-> ptr (Tree_view_drop_position.t_view) @-> returning bool)
  in
  let ret = get_dest_row_at_pos_raw self drag_x drag_y path_ptr pos_ptr in
  let path = !@ path_ptr in
  let pos = (!@ pos_ptr) in
  (ret, path, pos)
let get_drag_dest_row self =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let pos_ptr = allocate Tree_view_drop_position.t_view (Tree_view_drop_position.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_drag_dest_row_raw =
    foreign "gtk_tree_view_get_drag_dest_row" (ptr t_typ @-> ptr (ptr_opt Tree_path.t_typ) @-> ptr (Tree_view_drop_position.t_view) @-> returning void)
  in
  let ret = get_drag_dest_row_raw self path_ptr pos_ptr in
  let path = !@ path_ptr in
  let pos = (!@ pos_ptr) in
  (path, pos)
let get_enable_search =
  foreign "gtk_tree_view_get_enable_search" (ptr t_typ @-> returning (bool))
let get_enable_tree_lines =
  foreign "gtk_tree_view_get_enable_tree_lines" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_tree_view_get_expander_column return type object not handled*)
let get_fixed_height_mode =
  foreign "gtk_tree_view_get_fixed_height_mode" (ptr t_typ @-> returning (bool))
let get_grid_lines =
  foreign "gtk_tree_view_get_grid_lines" (ptr t_typ @-> returning (Tree_view_grid_lines.t_view))
(*Not implemented gtk_tree_view_get_hadjustment return type object not handled*)
let get_headers_clickable =
  foreign "gtk_tree_view_get_headers_clickable" (ptr t_typ @-> returning (bool))
let get_headers_visible =
  foreign "gtk_tree_view_get_headers_visible" (ptr t_typ @-> returning (bool))
let get_hover_expand =
  foreign "gtk_tree_view_get_hover_expand" (ptr t_typ @-> returning (bool))
let get_hover_selection =
  foreign "gtk_tree_view_get_hover_selection" (ptr t_typ @-> returning (bool))
let get_level_indentation =
  foreign "gtk_tree_view_get_level_indentation" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_tree_view_get_model return type interface not handled*)
let get_n_columns =
  foreign "gtk_tree_view_get_n_columns" (ptr t_typ @-> returning (uint32_t))
(*Not implemented gtk_tree_view_get_path_at_pos type object not implemented*)
let get_reorderable =
  foreign "gtk_tree_view_get_reorderable" (ptr t_typ @-> returning (bool))
let get_rubber_banding =
  foreign "gtk_tree_view_get_rubber_banding" (ptr t_typ @-> returning (bool))
let get_rules_hint =
  foreign "gtk_tree_view_get_rules_hint" (ptr t_typ @-> returning (bool))
let get_search_column =
  foreign "gtk_tree_view_get_search_column" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_tree_view_get_search_entry return type object not handled*)
(*Not implemented gtk_tree_view_get_selection return type object not handled*)
let get_show_expanders =
  foreign "gtk_tree_view_get_show_expanders" (ptr t_typ @-> returning (bool))
let get_tooltip_column =
  foreign "gtk_tree_view_get_tooltip_column" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_tree_view_get_tooltip_context type interface not implemented*)
(*Not implemented gtk_tree_view_get_vadjustment return type object not handled*)
let get_visible_range self =
  let start_path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let end_path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let get_visible_range_raw =
    foreign "gtk_tree_view_get_visible_range" (ptr t_typ @-> ptr (ptr Tree_path.t_typ) @-> ptr (ptr Tree_path.t_typ) @-> returning bool)
  in
  let ret = get_visible_range_raw self start_path_ptr end_path_ptr in
  let start_path = !@ start_path_ptr in
  let end_path = !@ end_path_ptr in
  (ret, start_path, end_path)
let get_visible_rect self =
  let visible_rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_visible_rect_raw =
    foreign "gtk_tree_view_get_visible_rect" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_visible_rect_raw self visible_rect_ptr in
  let visible_rect = !@ visible_rect_ptr in
  (visible_rect)
(*Not implemented gtk_tree_view_insert_column type object not implemented*)
(*Not implemented gtk_tree_view_insert_column_with_data_func type object not implemented*)
(*Not implemented gtk_tree_view_is_blank_at_pos type object not implemented*)
let is_rubber_banding_active =
  foreign "gtk_tree_view_is_rubber_banding_active" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_tree_view_map_expanded_rows type callback not implemented*)
(*Not implemented gtk_tree_view_move_column_after type object not implemented*)
(*Not implemented gtk_tree_view_remove_column type object not implemented*)
(*Not implemented gtk_tree_view_row_activated type object not implemented*)
let row_expanded =
  foreign "gtk_tree_view_row_expanded" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (bool))
(*Not implemented gtk_tree_view_scroll_to_cell type object not implemented*)
let scroll_to_point =
  foreign "gtk_tree_view_scroll_to_point" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_activate_on_single_click =
  foreign "gtk_tree_view_set_activate_on_single_click" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_tree_view_set_column_drag_function type callback not implemented*)
(*Not implemented gtk_tree_view_set_cursor type object not implemented*)
(*Not implemented gtk_tree_view_set_cursor_on_cell type object not implemented*)
(*Not implemented gtk_tree_view_set_destroy_count_func type callback not implemented*)
let set_drag_dest_row =
  foreign "gtk_tree_view_set_drag_dest_row" (ptr t_typ @-> ptr_opt Tree_path.t_typ @-> Tree_view_drop_position.t_view @-> returning (void))
let set_enable_search =
  foreign "gtk_tree_view_set_enable_search" (ptr t_typ @-> bool @-> returning (void))
let set_enable_tree_lines =
  foreign "gtk_tree_view_set_enable_tree_lines" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_tree_view_set_expander_column type object not implemented*)
let set_fixed_height_mode =
  foreign "gtk_tree_view_set_fixed_height_mode" (ptr t_typ @-> bool @-> returning (void))
let set_grid_lines =
  foreign "gtk_tree_view_set_grid_lines" (ptr t_typ @-> Tree_view_grid_lines.t_view @-> returning (void))
(*Not implemented gtk_tree_view_set_hadjustment type object not implemented*)
let set_headers_clickable =
  foreign "gtk_tree_view_set_headers_clickable" (ptr t_typ @-> bool @-> returning (void))
let set_headers_visible =
  foreign "gtk_tree_view_set_headers_visible" (ptr t_typ @-> bool @-> returning (void))
let set_hover_expand =
  foreign "gtk_tree_view_set_hover_expand" (ptr t_typ @-> bool @-> returning (void))
let set_hover_selection =
  foreign "gtk_tree_view_set_hover_selection" (ptr t_typ @-> bool @-> returning (void))
let set_level_indentation =
  foreign "gtk_tree_view_set_level_indentation" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_tree_view_set_model type interface not implemented*)
let set_reorderable =
  foreign "gtk_tree_view_set_reorderable" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_tree_view_set_row_separator_func type callback not implemented*)
let set_rubber_banding =
  foreign "gtk_tree_view_set_rubber_banding" (ptr t_typ @-> bool @-> returning (void))
let set_rules_hint =
  foreign "gtk_tree_view_set_rules_hint" (ptr t_typ @-> bool @-> returning (void))
let set_search_column =
  foreign "gtk_tree_view_set_search_column" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_tree_view_set_search_entry type object not implemented*)
(*Not implemented gtk_tree_view_set_search_equal_func type callback not implemented*)
(*Not implemented gtk_tree_view_set_search_position_func type callback not implemented*)
let set_show_expanders =
  foreign "gtk_tree_view_set_show_expanders" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_tree_view_set_tooltip_cell type object not implemented*)
let set_tooltip_column =
  foreign "gtk_tree_view_set_tooltip_column" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_tree_view_set_tooltip_row type object not implemented*)
(*Not implemented gtk_tree_view_set_vadjustment type object not implemented*)
let unset_rows_drag_dest =
  foreign "gtk_tree_view_unset_rows_drag_dest" (ptr t_typ @-> returning (void))
let unset_rows_drag_source =
  foreign "gtk_tree_view_unset_rows_drag_source" (ptr t_typ @-> returning (void))
