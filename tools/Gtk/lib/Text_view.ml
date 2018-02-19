open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_text_view_new return type object not handled*)
(*Not implemented gtk_text_view_new_with_buffer type object not implemented*)
(*Not implemented gtk_text_view_add_child_at_anchor type object not implemented*)
(*Not implemented gtk_text_view_add_child_in_window type object not implemented*)
let backward_display_line =
  foreign "gtk_text_view_backward_display_line" (ptr t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let backward_display_line_start =
  foreign "gtk_text_view_backward_display_line_start" (ptr t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let buffer_to_window_coords self win buffer_x buffer_y =
  let window_x_ptr = allocate int32_t Int32.zero in
  let window_y_ptr = allocate int32_t Int32.zero in
  let buffer_to_window_coords_raw =
    foreign "gtk_text_view_buffer_to_window_coords" (ptr t_typ @-> Text_window_type.t_view @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = buffer_to_window_coords_raw self win buffer_x buffer_y window_x_ptr window_y_ptr in
  let window_x = !@ window_x_ptr in
  let window_y = !@ window_y_ptr in
  (window_x, window_y)
let forward_display_line =
  foreign "gtk_text_view_forward_display_line" (ptr t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let forward_display_line_end =
  foreign "gtk_text_view_forward_display_line_end" (ptr t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let get_accepts_tab =
  foreign "gtk_text_view_get_accepts_tab" (ptr t_typ @-> returning (bool))
let get_border_window_size =
  foreign "gtk_text_view_get_border_window_size" (ptr t_typ @-> Text_window_type.t_view @-> returning (int32_t))
let get_bottom_margin =
  foreign "gtk_text_view_get_bottom_margin" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_text_view_get_buffer return type object not handled*)
let get_cursor_locations self iter =
  let strong_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let weak_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_cursor_locations_raw =
    foreign "gtk_text_view_get_cursor_locations" (ptr t_typ @-> ptr_opt Text_iter.t_typ @-> ptr (Rectangle.t_typ) @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_cursor_locations_raw self iter strong_ptr weak_ptr in
  let strong = !@ strong_ptr in
  let weak = !@ weak_ptr in
  (strong, weak)
let get_cursor_visible =
  foreign "gtk_text_view_get_cursor_visible" (ptr t_typ @-> returning (bool))
let get_default_attributes =
  foreign "gtk_text_view_get_default_attributes" (ptr t_typ @-> returning (ptr Text_attributes.t_typ))
let get_editable =
  foreign "gtk_text_view_get_editable" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_text_view_get_hadjustment return type object not handled*)
let get_indent =
  foreign "gtk_text_view_get_indent" (ptr t_typ @-> returning (int32_t))
let get_input_hints =
  foreign "gtk_text_view_get_input_hints" (ptr t_typ @-> returning (Input_hints.t_list_view))
let get_input_purpose =
  foreign "gtk_text_view_get_input_purpose" (ptr t_typ @-> returning (Input_purpose.t_view))
let get_iter_at_location self x y =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_iter_at_location_raw =
    foreign "gtk_text_view_get_iter_at_location" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning bool)
  in
  let ret = get_iter_at_location_raw self x y iter_ptr in
  let iter = !@ iter_ptr in
  (ret, iter)
let get_iter_at_position self x y =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let trailing_ptr = allocate int32_t Int32.zero in
  let get_iter_at_position_raw =
    foreign "gtk_text_view_get_iter_at_position" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> ptr (int32_t) @-> returning bool)
  in
  let ret = get_iter_at_position_raw self x y iter_ptr trailing_ptr in
  let iter = !@ iter_ptr in
  let trailing = !@ trailing_ptr in
  (ret, iter, trailing)
let get_iter_location self iter =
  let location_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_iter_location_raw =
    foreign "gtk_text_view_get_iter_location" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_iter_location_raw self iter location_ptr in
  let location = !@ location_ptr in
  (location)
let get_justification =
  foreign "gtk_text_view_get_justification" (ptr t_typ @-> returning (Justification.t_view))
let get_left_margin =
  foreign "gtk_text_view_get_left_margin" (ptr t_typ @-> returning (int32_t))
let get_line_at_y self y =
  let target_iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let line_top_ptr = allocate int32_t Int32.zero in
  let get_line_at_y_raw =
    foreign "gtk_text_view_get_line_at_y" (ptr t_typ @-> int32_t @-> ptr (Text_iter.t_typ) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_line_at_y_raw self y target_iter_ptr line_top_ptr in
  let target_iter = !@ target_iter_ptr in
  let line_top = !@ line_top_ptr in
  (target_iter, line_top)
let get_line_yrange self iter =
  let y_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_line_yrange_raw =
    foreign "gtk_text_view_get_line_yrange" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_line_yrange_raw self iter y_ptr height_ptr in
  let y = !@ y_ptr in
  let height = !@ height_ptr in
  (y, height)
let get_monospace =
  foreign "gtk_text_view_get_monospace" (ptr t_typ @-> returning (bool))
let get_overwrite =
  foreign "gtk_text_view_get_overwrite" (ptr t_typ @-> returning (bool))
let get_pixels_above_lines =
  foreign "gtk_text_view_get_pixels_above_lines" (ptr t_typ @-> returning (int32_t))
let get_pixels_below_lines =
  foreign "gtk_text_view_get_pixels_below_lines" (ptr t_typ @-> returning (int32_t))
let get_pixels_inside_wrap =
  foreign "gtk_text_view_get_pixels_inside_wrap" (ptr t_typ @-> returning (int32_t))
let get_right_margin =
  foreign "gtk_text_view_get_right_margin" (ptr t_typ @-> returning (int32_t))
let get_tabs =
  foreign "gtk_text_view_get_tabs" (ptr t_typ @-> returning (ptr_opt Tab_array.t_typ))
let get_top_margin =
  foreign "gtk_text_view_get_top_margin" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_text_view_get_vadjustment return type object not handled*)
let get_visible_rect self =
  let visible_rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_visible_rect_raw =
    foreign "gtk_text_view_get_visible_rect" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_visible_rect_raw self visible_rect_ptr in
  let visible_rect = !@ visible_rect_ptr in
  (visible_rect)
(*Not implemented gtk_text_view_get_window return type object not handled*)
(*Not implemented gtk_text_view_get_window_type type object not implemented*)
let get_wrap_mode =
  foreign "gtk_text_view_get_wrap_mode" (ptr t_typ @-> returning (Wrap_mode.t_view))
let im_context_filter_keypress =
  foreign "gtk_text_view_im_context_filter_keypress" (ptr t_typ @-> ptr Event_key.t_typ @-> returning (bool))
(*Not implemented gtk_text_view_move_child type object not implemented*)
(*Not implemented gtk_text_view_move_mark_onscreen type object not implemented*)
let move_visually =
  foreign "gtk_text_view_move_visually" (ptr t_typ @-> ptr Text_iter.t_typ @-> int32_t @-> returning (bool))
let place_cursor_onscreen =
  foreign "gtk_text_view_place_cursor_onscreen" (ptr t_typ @-> returning (bool))
let reset_cursor_blink =
  foreign "gtk_text_view_reset_cursor_blink" (ptr t_typ @-> returning (void))
let reset_im_context =
  foreign "gtk_text_view_reset_im_context" (ptr t_typ @-> returning (void))
(*Not implemented gtk_text_view_scroll_mark_onscreen type object not implemented*)
let scroll_to_iter =
  foreign "gtk_text_view_scroll_to_iter" (ptr t_typ @-> ptr Text_iter.t_typ @-> double @-> bool @-> double @-> double @-> returning (bool))
(*Not implemented gtk_text_view_scroll_to_mark type object not implemented*)
let set_accepts_tab =
  foreign "gtk_text_view_set_accepts_tab" (ptr t_typ @-> bool @-> returning (void))
let set_border_window_size =
  foreign "gtk_text_view_set_border_window_size" (ptr t_typ @-> Text_window_type.t_view @-> int32_t @-> returning (void))
let set_bottom_margin =
  foreign "gtk_text_view_set_bottom_margin" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_text_view_set_buffer type object not implemented*)
let set_cursor_visible =
  foreign "gtk_text_view_set_cursor_visible" (ptr t_typ @-> bool @-> returning (void))
let set_editable =
  foreign "gtk_text_view_set_editable" (ptr t_typ @-> bool @-> returning (void))
let set_indent =
  foreign "gtk_text_view_set_indent" (ptr t_typ @-> int32_t @-> returning (void))
let set_input_hints =
  foreign "gtk_text_view_set_input_hints" (ptr t_typ @-> Input_hints.t_list_view @-> returning (void))
let set_input_purpose =
  foreign "gtk_text_view_set_input_purpose" (ptr t_typ @-> Input_purpose.t_view @-> returning (void))
let set_justification =
  foreign "gtk_text_view_set_justification" (ptr t_typ @-> Justification.t_view @-> returning (void))
let set_left_margin =
  foreign "gtk_text_view_set_left_margin" (ptr t_typ @-> int32_t @-> returning (void))
let set_monospace =
  foreign "gtk_text_view_set_monospace" (ptr t_typ @-> bool @-> returning (void))
let set_overwrite =
  foreign "gtk_text_view_set_overwrite" (ptr t_typ @-> bool @-> returning (void))
let set_pixels_above_lines =
  foreign "gtk_text_view_set_pixels_above_lines" (ptr t_typ @-> int32_t @-> returning (void))
let set_pixels_below_lines =
  foreign "gtk_text_view_set_pixels_below_lines" (ptr t_typ @-> int32_t @-> returning (void))
let set_pixels_inside_wrap =
  foreign "gtk_text_view_set_pixels_inside_wrap" (ptr t_typ @-> int32_t @-> returning (void))
let set_right_margin =
  foreign "gtk_text_view_set_right_margin" (ptr t_typ @-> int32_t @-> returning (void))
let set_tabs =
  foreign "gtk_text_view_set_tabs" (ptr t_typ @-> ptr Tab_array.t_typ @-> returning (void))
let set_top_margin =
  foreign "gtk_text_view_set_top_margin" (ptr t_typ @-> int32_t @-> returning (void))
let set_wrap_mode =
  foreign "gtk_text_view_set_wrap_mode" (ptr t_typ @-> Wrap_mode.t_view @-> returning (void))
let starts_display_line =
  foreign "gtk_text_view_starts_display_line" (ptr t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let window_to_buffer_coords self win window_x window_y =
  let buffer_x_ptr = allocate int32_t Int32.zero in
  let buffer_y_ptr = allocate int32_t Int32.zero in
  let window_to_buffer_coords_raw =
    foreign "gtk_text_view_window_to_buffer_coords" (ptr t_typ @-> Text_window_type.t_view @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = window_to_buffer_coords_raw self win window_x window_y buffer_x_ptr buffer_y_ptr in
  let buffer_x = !@ buffer_x_ptr in
  let buffer_y = !@ buffer_y_ptr in
  (buffer_x, buffer_y)
