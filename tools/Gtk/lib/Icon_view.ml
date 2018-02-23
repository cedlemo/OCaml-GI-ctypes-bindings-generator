open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_icon_view_new" (void @-> returning (Widget.t_typ))
let create_with_area =
  foreign "gtk_icon_view_new_with_area" (Cell_area.t_typ @-> returning (Widget.t_typ))
(*Not implemented gtk_icon_view_new_with_model type interface not implemented*)
let convert_widget_to_bin_window_coords self wx wy =
  let bx_ptr = allocate int32_t Int32.zero in
  let by_ptr = allocate int32_t Int32.zero in
  let convert_widget_to_bin_window_coords_raw =
    foreign "gtk_icon_view_convert_widget_to_bin_window_coords" (t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_widget_to_bin_window_coords_raw self wx wy bx_ptr by_ptr in
  let bx = !@ bx_ptr in
  let by = !@ by_ptr in
  (bx, by)
let create_drag_icon =
  foreign "gtk_icon_view_create_drag_icon" (t_typ @-> ptr Tree_path.t_typ @-> returning (ptr Surface.t_typ))
(*Not implemented gtk_icon_view_enable_model_drag_dest type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_view_enable_model_drag_source type C Array type for Types.Array tag not implemented*)
let get_activate_on_single_click =
  foreign "gtk_icon_view_get_activate_on_single_click" (t_typ @-> returning (bool))
let get_cell_rect self path cell =
  let rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_cell_rect_raw =
    foreign "gtk_icon_view_get_cell_rect" (t_typ @-> ptr Tree_path.t_typ @-> Cell_renderer.t_typ @-> ptr (Rectangle.t_typ) @-> returning bool)
  in
  let ret = get_cell_rect_raw self path cell rect_ptr in
  let rect = !@ rect_ptr in
  (ret, rect)
let get_column_spacing =
  foreign "gtk_icon_view_get_column_spacing" (t_typ @-> returning (int32_t))
let get_columns =
  foreign "gtk_icon_view_get_columns" (t_typ @-> returning (int32_t))
let get_cursor self =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let cell_ptr = allocate (ptr_opt Cell_renderer.t_typ) None in
  let get_cursor_raw =
    foreign "gtk_icon_view_get_cursor" (t_typ @-> ptr (ptr Tree_path.t_typ) @-> ptr (Cell_renderer.t_typ) @-> returning bool)
  in
  let ret = get_cursor_raw self path_ptr cell_ptr in
  let path = !@ path_ptr in
  let cell = !@ cell_ptr in
  (ret, path, cell)
let get_dest_item_at_pos self drag_x drag_y =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let pos_ptr = allocate Icon_view_drop_position.t_view (Icon_view_drop_position.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_dest_item_at_pos_raw =
    foreign "gtk_icon_view_get_dest_item_at_pos" (t_typ @-> int32_t @-> int32_t @-> ptr (ptr Tree_path.t_typ) @-> ptr (Icon_view_drop_position.t_view) @-> returning bool)
  in
  let ret = get_dest_item_at_pos_raw self drag_x drag_y path_ptr pos_ptr in
  let path = !@ path_ptr in
  let pos = (!@ pos_ptr) in
  (ret, path, pos)
let get_drag_dest_item self =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let pos_ptr = allocate Icon_view_drop_position.t_view (Icon_view_drop_position.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_drag_dest_item_raw =
    foreign "gtk_icon_view_get_drag_dest_item" (t_typ @-> ptr (ptr Tree_path.t_typ) @-> ptr (Icon_view_drop_position.t_view) @-> returning void)
  in
  let ret = get_drag_dest_item_raw self path_ptr pos_ptr in
  let path = !@ path_ptr in
  let pos = (!@ pos_ptr) in
  (path, pos)
let get_item_at_pos self x y =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let cell_ptr = allocate (ptr_opt Cell_renderer.t_typ) None in
  let get_item_at_pos_raw =
    foreign "gtk_icon_view_get_item_at_pos" (t_typ @-> int32_t @-> int32_t @-> ptr (ptr Tree_path.t_typ) @-> ptr (Cell_renderer.t_typ) @-> returning bool)
  in
  let ret = get_item_at_pos_raw self x y path_ptr cell_ptr in
  let path = !@ path_ptr in
  let cell = !@ cell_ptr in
  (ret, path, cell)
let get_item_column =
  foreign "gtk_icon_view_get_item_column" (t_typ @-> ptr Tree_path.t_typ @-> returning (int32_t))
let get_item_orientation =
  foreign "gtk_icon_view_get_item_orientation" (t_typ @-> returning (Orientation.t_view))
let get_item_padding =
  foreign "gtk_icon_view_get_item_padding" (t_typ @-> returning (int32_t))
let get_item_row =
  foreign "gtk_icon_view_get_item_row" (t_typ @-> ptr Tree_path.t_typ @-> returning (int32_t))
let get_item_width =
  foreign "gtk_icon_view_get_item_width" (t_typ @-> returning (int32_t))
let get_margin =
  foreign "gtk_icon_view_get_margin" (t_typ @-> returning (int32_t))
let get_markup_column =
  foreign "gtk_icon_view_get_markup_column" (t_typ @-> returning (int32_t))
(*Not implemented gtk_icon_view_get_model return type interface not handled*)
let get_path_at_pos =
  foreign "gtk_icon_view_get_path_at_pos" (t_typ @-> int32_t @-> int32_t @-> returning (ptr_opt Tree_path.t_typ))
let get_pixbuf_column =
  foreign "gtk_icon_view_get_pixbuf_column" (t_typ @-> returning (int32_t))
let get_reorderable =
  foreign "gtk_icon_view_get_reorderable" (t_typ @-> returning (bool))
let get_row_spacing =
  foreign "gtk_icon_view_get_row_spacing" (t_typ @-> returning (int32_t))
let get_selected_items =
  foreign "gtk_icon_view_get_selected_items" (t_typ @-> returning (ptr List.t_typ))
let get_selection_mode =
  foreign "gtk_icon_view_get_selection_mode" (t_typ @-> returning (Selection_mode.t_view))
let get_spacing =
  foreign "gtk_icon_view_get_spacing" (t_typ @-> returning (int32_t))
let get_text_column =
  foreign "gtk_icon_view_get_text_column" (t_typ @-> returning (int32_t))
let get_tooltip_column =
  foreign "gtk_icon_view_get_tooltip_column" (t_typ @-> returning (int32_t))
(*Not implemented gtk_icon_view_get_tooltip_context type interface not implemented*)
let get_visible_range self =
  let start_path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let end_path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let get_visible_range_raw =
    foreign "gtk_icon_view_get_visible_range" (t_typ @-> ptr (ptr Tree_path.t_typ) @-> ptr (ptr Tree_path.t_typ) @-> returning bool)
  in
  let ret = get_visible_range_raw self start_path_ptr end_path_ptr in
  let start_path = !@ start_path_ptr in
  let end_path = !@ end_path_ptr in
  (ret, start_path, end_path)
let item_activated =
  foreign "gtk_icon_view_item_activated" (t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let path_is_selected =
  foreign "gtk_icon_view_path_is_selected" (t_typ @-> ptr Tree_path.t_typ @-> returning (bool))
let scroll_to_path =
  foreign "gtk_icon_view_scroll_to_path" (t_typ @-> ptr Tree_path.t_typ @-> bool @-> float @-> float @-> returning (void))
let select_all =
  foreign "gtk_icon_view_select_all" (t_typ @-> returning (void))
let select_path =
  foreign "gtk_icon_view_select_path" (t_typ @-> ptr Tree_path.t_typ @-> returning (void))
(*Not implemented gtk_icon_view_selected_foreach type callback not implemented*)
let set_activate_on_single_click =
  foreign "gtk_icon_view_set_activate_on_single_click" (t_typ @-> bool @-> returning (void))
let set_column_spacing =
  foreign "gtk_icon_view_set_column_spacing" (t_typ @-> int32_t @-> returning (void))
let set_columns =
  foreign "gtk_icon_view_set_columns" (t_typ @-> int32_t @-> returning (void))
let set_cursor =
  foreign "gtk_icon_view_set_cursor" (t_typ @-> ptr Tree_path.t_typ @-> Cell_renderer.t_typ @-> bool @-> returning (void))
let set_drag_dest_item =
  foreign "gtk_icon_view_set_drag_dest_item" (t_typ @-> ptr_opt Tree_path.t_typ @-> Icon_view_drop_position.t_view @-> returning (void))
let set_item_orientation =
  foreign "gtk_icon_view_set_item_orientation" (t_typ @-> Orientation.t_view @-> returning (void))
let set_item_padding =
  foreign "gtk_icon_view_set_item_padding" (t_typ @-> int32_t @-> returning (void))
let set_item_width =
  foreign "gtk_icon_view_set_item_width" (t_typ @-> int32_t @-> returning (void))
let set_margin =
  foreign "gtk_icon_view_set_margin" (t_typ @-> int32_t @-> returning (void))
let set_markup_column =
  foreign "gtk_icon_view_set_markup_column" (t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_icon_view_set_model type interface not implemented*)
let set_pixbuf_column =
  foreign "gtk_icon_view_set_pixbuf_column" (t_typ @-> int32_t @-> returning (void))
let set_reorderable =
  foreign "gtk_icon_view_set_reorderable" (t_typ @-> bool @-> returning (void))
let set_row_spacing =
  foreign "gtk_icon_view_set_row_spacing" (t_typ @-> int32_t @-> returning (void))
let set_selection_mode =
  foreign "gtk_icon_view_set_selection_mode" (t_typ @-> Selection_mode.t_view @-> returning (void))
let set_spacing =
  foreign "gtk_icon_view_set_spacing" (t_typ @-> int32_t @-> returning (void))
let set_text_column =
  foreign "gtk_icon_view_set_text_column" (t_typ @-> int32_t @-> returning (void))
let set_tooltip_cell =
  foreign "gtk_icon_view_set_tooltip_cell" (t_typ @-> Tooltip.t_typ @-> ptr Tree_path.t_typ @-> Cell_renderer.t_typ @-> returning (void))
let set_tooltip_column =
  foreign "gtk_icon_view_set_tooltip_column" (t_typ @-> int32_t @-> returning (void))
let set_tooltip_item =
  foreign "gtk_icon_view_set_tooltip_item" (t_typ @-> Tooltip.t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let unselect_all =
  foreign "gtk_icon_view_unselect_all" (t_typ @-> returning (void))
let unselect_path =
  foreign "gtk_icon_view_unselect_path" (t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let unset_model_drag_dest =
  foreign "gtk_icon_view_unset_model_drag_dest" (t_typ @-> returning (void))
let unset_model_drag_source =
  foreign "gtk_icon_view_unset_model_drag_source" (t_typ @-> returning (void))
