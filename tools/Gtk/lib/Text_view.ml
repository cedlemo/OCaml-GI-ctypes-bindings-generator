open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_text_view_new" (void @-> returning (Widget.t_typ))
let create_with_buffer =
  foreign "gtk_text_view_new_with_buffer" (Text_buffer.t_typ @-> returning (Widget.t_typ))
let add_child_at_anchor =
  foreign "gtk_text_view_add_child_at_anchor" (t_typ @-> Widget.t_typ @-> Text_child_anchor.t_typ @-> returning (void))
let add_child_in_window =
  foreign "gtk_text_view_add_child_in_window" (t_typ @-> Widget.t_typ @-> Text_window_type.t_view @-> int32_t @-> int32_t @-> returning (void))
let backward_display_line =
  foreign "gtk_text_view_backward_display_line" (t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let backward_display_line_start =
  foreign "gtk_text_view_backward_display_line_start" (t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let buffer_to_window_coords self win buffer_x buffer_y =
  let window_x_ptr = allocate int32_t Int32.zero in
  let window_y_ptr = allocate int32_t Int32.zero in
  let buffer_to_window_coords_raw =
    foreign "gtk_text_view_buffer_to_window_coords" (t_typ @-> Text_window_type.t_view @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = buffer_to_window_coords_raw self win buffer_x buffer_y window_x_ptr window_y_ptr in
  let window_x = !@ window_x_ptr in
  let window_y = !@ window_y_ptr in
  (window_x, window_y)
let forward_display_line =
  foreign "gtk_text_view_forward_display_line" (t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let forward_display_line_end =
  foreign "gtk_text_view_forward_display_line_end" (t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let get_accepts_tab =
  foreign "gtk_text_view_get_accepts_tab" (t_typ @-> returning (bool))
let get_border_window_size =
  foreign "gtk_text_view_get_border_window_size" (t_typ @-> Text_window_type.t_view @-> returning (int32_t))
let get_bottom_margin =
  foreign "gtk_text_view_get_bottom_margin" (t_typ @-> returning (int32_t))
let get_buffer =
  foreign "gtk_text_view_get_buffer" (t_typ @-> returning (Text_buffer.t_typ))
let get_cursor_locations self iter =
  let strong_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let weak_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_cursor_locations_raw =
    foreign "gtk_text_view_get_cursor_locations" (t_typ @-> ptr_opt Text_iter.t_typ @-> ptr (Rectangle.t_typ) @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_cursor_locations_raw self iter strong_ptr weak_ptr in
  let strong = !@ strong_ptr in
  let weak = !@ weak_ptr in
  (strong, weak)
let get_cursor_visible =
  foreign "gtk_text_view_get_cursor_visible" (t_typ @-> returning (bool))
let get_default_attributes =
  foreign "gtk_text_view_get_default_attributes" (t_typ @-> returning (ptr Text_attributes.t_typ))
let get_editable =
  foreign "gtk_text_view_get_editable" (t_typ @-> returning (bool))
let get_hadjustment =
  foreign "gtk_text_view_get_hadjustment" (t_typ @-> returning (Adjustment.t_typ))
let get_indent =
  foreign "gtk_text_view_get_indent" (t_typ @-> returning (int32_t))
let get_input_hints =
  foreign "gtk_text_view_get_input_hints" (t_typ @-> returning (Input_hints.t_list_view))
let get_input_purpose =
  foreign "gtk_text_view_get_input_purpose" (t_typ @-> returning (Input_purpose.t_view))
let get_iter_at_location self x y =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_iter_at_location_raw =
    foreign "gtk_text_view_get_iter_at_location" (t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning bool)
  in
  let ret = get_iter_at_location_raw self x y iter_ptr in
  let iter = !@ iter_ptr in
  (ret, iter)
let get_iter_at_position self x y =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let trailing_ptr = allocate int32_t Int32.zero in
  let get_iter_at_position_raw =
    foreign "gtk_text_view_get_iter_at_position" (t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> ptr (int32_t) @-> returning bool)
  in
  let ret = get_iter_at_position_raw self x y iter_ptr trailing_ptr in
  let iter = !@ iter_ptr in
  let trailing = !@ trailing_ptr in
  (ret, iter, trailing)
let get_iter_location self iter =
  let location_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_iter_location_raw =
    foreign "gtk_text_view_get_iter_location" (t_typ @-> ptr Text_iter.t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_iter_location_raw self iter location_ptr in
  let location = !@ location_ptr in
  (location)
let get_justification =
  foreign "gtk_text_view_get_justification" (t_typ @-> returning (Justification.t_view))
let get_left_margin =
  foreign "gtk_text_view_get_left_margin" (t_typ @-> returning (int32_t))
let get_line_at_y self y =
  let target_iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let line_top_ptr = allocate int32_t Int32.zero in
  let get_line_at_y_raw =
    foreign "gtk_text_view_get_line_at_y" (t_typ @-> int32_t @-> ptr (Text_iter.t_typ) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_line_at_y_raw self y target_iter_ptr line_top_ptr in
  let target_iter = !@ target_iter_ptr in
  let line_top = !@ line_top_ptr in
  (target_iter, line_top)
let get_line_yrange self iter =
  let y_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_line_yrange_raw =
    foreign "gtk_text_view_get_line_yrange" (t_typ @-> ptr Text_iter.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_line_yrange_raw self iter y_ptr height_ptr in
  let y = !@ y_ptr in
  let height = !@ height_ptr in
  (y, height)
let get_monospace =
  foreign "gtk_text_view_get_monospace" (t_typ @-> returning (bool))
let get_overwrite =
  foreign "gtk_text_view_get_overwrite" (t_typ @-> returning (bool))
let get_pixels_above_lines =
  foreign "gtk_text_view_get_pixels_above_lines" (t_typ @-> returning (int32_t))
let get_pixels_below_lines =
  foreign "gtk_text_view_get_pixels_below_lines" (t_typ @-> returning (int32_t))
let get_pixels_inside_wrap =
  foreign "gtk_text_view_get_pixels_inside_wrap" (t_typ @-> returning (int32_t))
let get_right_margin =
  foreign "gtk_text_view_get_right_margin" (t_typ @-> returning (int32_t))
let get_tabs =
  foreign "gtk_text_view_get_tabs" (t_typ @-> returning (ptr_opt Tab_array.t_typ))
let get_top_margin =
  foreign "gtk_text_view_get_top_margin" (t_typ @-> returning (int32_t))
let get_vadjustment =
  foreign "gtk_text_view_get_vadjustment" (t_typ @-> returning (Adjustment.t_typ))
let get_visible_rect self =
  let visible_rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_visible_rect_raw =
    foreign "gtk_text_view_get_visible_rect" (t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_visible_rect_raw self visible_rect_ptr in
  let visible_rect = !@ visible_rect_ptr in
  (visible_rect)
let get_window =
  foreign "gtk_text_view_get_window" (t_typ @-> Text_window_type.t_view @-> returning (Window.t_typ))
let get_window_type =
  foreign "gtk_text_view_get_window_type" (t_typ @-> Window.t_typ @-> returning (Text_window_type.t_view))
let get_wrap_mode =
  foreign "gtk_text_view_get_wrap_mode" (t_typ @-> returning (Wrap_mode.t_view))
let im_context_filter_keypress =
  foreign "gtk_text_view_im_context_filter_keypress" (t_typ @-> ptr Event_key.t_typ @-> returning (bool))
let move_child =
  foreign "gtk_text_view_move_child" (t_typ @-> Widget.t_typ @-> int32_t @-> int32_t @-> returning (void))
let move_mark_onscreen =
  foreign "gtk_text_view_move_mark_onscreen" (t_typ @-> Text_mark.t_typ @-> returning (bool))
let move_visually =
  foreign "gtk_text_view_move_visually" (t_typ @-> ptr Text_iter.t_typ @-> int32_t @-> returning (bool))
let place_cursor_onscreen =
  foreign "gtk_text_view_place_cursor_onscreen" (t_typ @-> returning (bool))
let reset_cursor_blink =
  foreign "gtk_text_view_reset_cursor_blink" (t_typ @-> returning (void))
let reset_im_context =
  foreign "gtk_text_view_reset_im_context" (t_typ @-> returning (void))
let scroll_mark_onscreen =
  foreign "gtk_text_view_scroll_mark_onscreen" (t_typ @-> Text_mark.t_typ @-> returning (void))
let scroll_to_iter =
  foreign "gtk_text_view_scroll_to_iter" (t_typ @-> ptr Text_iter.t_typ @-> double @-> bool @-> double @-> double @-> returning (bool))
let scroll_to_mark =
  foreign "gtk_text_view_scroll_to_mark" (t_typ @-> Text_mark.t_typ @-> double @-> bool @-> double @-> double @-> returning (void))
let set_accepts_tab =
  foreign "gtk_text_view_set_accepts_tab" (t_typ @-> bool @-> returning (void))
let set_border_window_size =
  foreign "gtk_text_view_set_border_window_size" (t_typ @-> Text_window_type.t_view @-> int32_t @-> returning (void))
let set_bottom_margin =
  foreign "gtk_text_view_set_bottom_margin" (t_typ @-> int32_t @-> returning (void))
let set_buffer =
  foreign "gtk_text_view_set_buffer" (t_typ @-> Text_buffer.t_typ @-> returning (void))
let set_cursor_visible =
  foreign "gtk_text_view_set_cursor_visible" (t_typ @-> bool @-> returning (void))
let set_editable =
  foreign "gtk_text_view_set_editable" (t_typ @-> bool @-> returning (void))
let set_indent =
  foreign "gtk_text_view_set_indent" (t_typ @-> int32_t @-> returning (void))
let set_input_hints =
  foreign "gtk_text_view_set_input_hints" (t_typ @-> Input_hints.t_list_view @-> returning (void))
let set_input_purpose =
  foreign "gtk_text_view_set_input_purpose" (t_typ @-> Input_purpose.t_view @-> returning (void))
let set_justification =
  foreign "gtk_text_view_set_justification" (t_typ @-> Justification.t_view @-> returning (void))
let set_left_margin =
  foreign "gtk_text_view_set_left_margin" (t_typ @-> int32_t @-> returning (void))
let set_monospace =
  foreign "gtk_text_view_set_monospace" (t_typ @-> bool @-> returning (void))
let set_overwrite =
  foreign "gtk_text_view_set_overwrite" (t_typ @-> bool @-> returning (void))
let set_pixels_above_lines =
  foreign "gtk_text_view_set_pixels_above_lines" (t_typ @-> int32_t @-> returning (void))
let set_pixels_below_lines =
  foreign "gtk_text_view_set_pixels_below_lines" (t_typ @-> int32_t @-> returning (void))
let set_pixels_inside_wrap =
  foreign "gtk_text_view_set_pixels_inside_wrap" (t_typ @-> int32_t @-> returning (void))
let set_right_margin =
  foreign "gtk_text_view_set_right_margin" (t_typ @-> int32_t @-> returning (void))
let set_tabs =
  foreign "gtk_text_view_set_tabs" (t_typ @-> ptr Tab_array.t_typ @-> returning (void))
let set_top_margin =
  foreign "gtk_text_view_set_top_margin" (t_typ @-> int32_t @-> returning (void))
let set_wrap_mode =
  foreign "gtk_text_view_set_wrap_mode" (t_typ @-> Wrap_mode.t_view @-> returning (void))
let starts_display_line =
  foreign "gtk_text_view_starts_display_line" (t_typ @-> ptr Text_iter.t_typ @-> returning (bool))
let window_to_buffer_coords self win window_x window_y =
  let buffer_x_ptr = allocate int32_t Int32.zero in
  let buffer_y_ptr = allocate int32_t Int32.zero in
  let window_to_buffer_coords_raw =
    foreign "gtk_text_view_window_to_buffer_coords" (t_typ @-> Text_window_type.t_view @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = window_to_buffer_coords_raw self win window_x window_y buffer_x_ptr buffer_y_ptr in
  let buffer_x = !@ buffer_x_ptr in
  let buffer_y = !@ buffer_y_ptr in
  (buffer_x, buffer_y)
