open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_icon_view_new return type object not handled*)
(*Not implemented gtk_icon_view_new_with_area type object not implemented*)
(*Not implemented gtk_icon_view_new_with_model type interface not implemented*)
let convert_widget_to_bin_window_coords self wx wy =
  let bx_ptr = allocate int32_t Int32.zero in
  let by_ptr = allocate int32_t Int32.zero in
  let convert_widget_to_bin_window_coords_raw =
    foreign "gtk_icon_view_convert_widget_to_bin_window_coords" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = convert_widget_to_bin_window_coords_raw self wx wy bx_ptr by_ptr in
  let bx = !@ bx_ptr in
  let by = !@ by_ptr in
  (bx, by)
let create_drag_icon =
  foreign "gtk_icon_view_create_drag_icon" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (ptr Surface.t_typ))
(*Not implemented gtk_icon_view_enable_model_drag_dest type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_view_enable_model_drag_source type C Array type for Types.Array tag not implemented*)
let get_activate_on_single_click =
  foreign "gtk_icon_view_get_activate_on_single_click" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_icon_view_get_cell_rect type object not implemented*)
let get_column_spacing =
  foreign "gtk_icon_view_get_column_spacing" (ptr t_typ @-> returning (int32_t))
let get_columns =
  foreign "gtk_icon_view_get_columns" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_icon_view_get_cursor type object not implemented*)
let get_dest_item_at_pos self drag_x drag_y =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let pos_ptr = allocate Icon_view_drop_position.t_view (Icon_view_drop_position.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_dest_item_at_pos_raw =
    foreign "gtk_icon_view_get_dest_item_at_pos" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (ptr Tree_path.t_typ) @-> ptr (Icon_view_drop_position.t_view) @-> returning bool)
  in
  let ret = get_dest_item_at_pos_raw self drag_x drag_y path_ptr pos_ptr in
  let path = !@ path_ptr in
  let pos = (!@ pos_ptr) in
  (ret, path, pos)
let get_drag_dest_item self =
  let path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let pos_ptr = allocate Icon_view_drop_position.t_view (Icon_view_drop_position.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_drag_dest_item_raw =
    foreign "gtk_icon_view_get_drag_dest_item" (ptr t_typ @-> ptr (ptr Tree_path.t_typ) @-> ptr (Icon_view_drop_position.t_view) @-> returning void)
  in
  let ret = get_drag_dest_item_raw self path_ptr pos_ptr in
  let path = !@ path_ptr in
  let pos = (!@ pos_ptr) in
  (path, pos)
(*Not implemented gtk_icon_view_get_item_at_pos type object not implemented*)
let get_item_column =
  foreign "gtk_icon_view_get_item_column" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (int32_t))
let get_item_orientation =
  foreign "gtk_icon_view_get_item_orientation" (ptr t_typ @-> returning (Orientation.t_view))
let get_item_padding =
  foreign "gtk_icon_view_get_item_padding" (ptr t_typ @-> returning (int32_t))
let get_item_row =
  foreign "gtk_icon_view_get_item_row" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (int32_t))
let get_item_width =
  foreign "gtk_icon_view_get_item_width" (ptr t_typ @-> returning (int32_t))
let get_margin =
  foreign "gtk_icon_view_get_margin" (ptr t_typ @-> returning (int32_t))
let get_markup_column =
  foreign "gtk_icon_view_get_markup_column" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_icon_view_get_model return type interface not handled*)
let get_path_at_pos =
  foreign "gtk_icon_view_get_path_at_pos" (ptr t_typ @-> int32_t @-> int32_t @-> returning (ptr_opt Tree_path.t_typ))
let get_pixbuf_column =
  foreign "gtk_icon_view_get_pixbuf_column" (ptr t_typ @-> returning (int32_t))
let get_reorderable =
  foreign "gtk_icon_view_get_reorderable" (ptr t_typ @-> returning (bool))
let get_row_spacing =
  foreign "gtk_icon_view_get_row_spacing" (ptr t_typ @-> returning (int32_t))
let get_selected_items =
  foreign "gtk_icon_view_get_selected_items" (ptr t_typ @-> returning (ptr List.t_typ))
let get_selection_mode =
  foreign "gtk_icon_view_get_selection_mode" (ptr t_typ @-> returning (Selection_mode.t_view))
let get_spacing =
  foreign "gtk_icon_view_get_spacing" (ptr t_typ @-> returning (int32_t))
let get_text_column =
  foreign "gtk_icon_view_get_text_column" (ptr t_typ @-> returning (int32_t))
let get_tooltip_column =
  foreign "gtk_icon_view_get_tooltip_column" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_icon_view_get_tooltip_context type interface not implemented*)
let get_visible_range self =
  let start_path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let end_path_ptr = allocate (ptr_opt Tree_path.t_typ) None in
  let get_visible_range_raw =
    foreign "gtk_icon_view_get_visible_range" (ptr t_typ @-> ptr (ptr Tree_path.t_typ) @-> ptr (ptr Tree_path.t_typ) @-> returning bool)
  in
  let ret = get_visible_range_raw self start_path_ptr end_path_ptr in
  let start_path = !@ start_path_ptr in
  let end_path = !@ end_path_ptr in
  (ret, start_path, end_path)
let item_activated =
  foreign "gtk_icon_view_item_activated" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let path_is_selected =
  foreign "gtk_icon_view_path_is_selected" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (bool))
let scroll_to_path =
  foreign "gtk_icon_view_scroll_to_path" (ptr t_typ @-> ptr Tree_path.t_typ @-> bool @-> float @-> float @-> returning (void))
let select_all =
  foreign "gtk_icon_view_select_all" (ptr t_typ @-> returning (void))
let select_path =
  foreign "gtk_icon_view_select_path" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (void))
(*Not implemented gtk_icon_view_selected_foreach type callback not implemented*)
let set_activate_on_single_click =
  foreign "gtk_icon_view_set_activate_on_single_click" (ptr t_typ @-> bool @-> returning (void))
let set_column_spacing =
  foreign "gtk_icon_view_set_column_spacing" (ptr t_typ @-> int32_t @-> returning (void))
let set_columns =
  foreign "gtk_icon_view_set_columns" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_icon_view_set_cursor type object not implemented*)
let set_drag_dest_item =
  foreign "gtk_icon_view_set_drag_dest_item" (ptr t_typ @-> ptr_opt Tree_path.t_typ @-> Icon_view_drop_position.t_view @-> returning (void))
let set_item_orientation =
  foreign "gtk_icon_view_set_item_orientation" (ptr t_typ @-> Orientation.t_view @-> returning (void))
let set_item_padding =
  foreign "gtk_icon_view_set_item_padding" (ptr t_typ @-> int32_t @-> returning (void))
let set_item_width =
  foreign "gtk_icon_view_set_item_width" (ptr t_typ @-> int32_t @-> returning (void))
let set_margin =
  foreign "gtk_icon_view_set_margin" (ptr t_typ @-> int32_t @-> returning (void))
let set_markup_column =
  foreign "gtk_icon_view_set_markup_column" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_icon_view_set_model type interface not implemented*)
let set_pixbuf_column =
  foreign "gtk_icon_view_set_pixbuf_column" (ptr t_typ @-> int32_t @-> returning (void))
let set_reorderable =
  foreign "gtk_icon_view_set_reorderable" (ptr t_typ @-> bool @-> returning (void))
let set_row_spacing =
  foreign "gtk_icon_view_set_row_spacing" (ptr t_typ @-> int32_t @-> returning (void))
let set_selection_mode =
  foreign "gtk_icon_view_set_selection_mode" (ptr t_typ @-> Selection_mode.t_view @-> returning (void))
let set_spacing =
  foreign "gtk_icon_view_set_spacing" (ptr t_typ @-> int32_t @-> returning (void))
let set_text_column =
  foreign "gtk_icon_view_set_text_column" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_icon_view_set_tooltip_cell type object not implemented*)
let set_tooltip_column =
  foreign "gtk_icon_view_set_tooltip_column" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_icon_view_set_tooltip_item type object not implemented*)
let unselect_all =
  foreign "gtk_icon_view_unselect_all" (ptr t_typ @-> returning (void))
let unselect_path =
  foreign "gtk_icon_view_unselect_path" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let unset_model_drag_dest =
  foreign "gtk_icon_view_unset_model_drag_dest" (ptr t_typ @-> returning (void))
let unset_model_drag_source =
  foreign "gtk_icon_view_unset_model_drag_source" (ptr t_typ @-> returning (void))
