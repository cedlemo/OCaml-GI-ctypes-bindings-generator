open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_text_view_new return type object not handled*)
(*Not implemented gtk_text_view_new_with_buffer type object not implemented*)
(*Not implemented gtk_text_view_add_child_at_anchor type object not implemented*)
(*Not implemented gtk_text_view_add_child_in_window type object not implemented*)
val backward_display_line:
  t structure ptr -> Text_iter.t structure ptr -> bool
val backward_display_line_start:
  t structure ptr -> Text_iter.t structure ptr -> bool
val buffer_to_window_coords :
  t structure ptr -> Text_window_type.t -> int32 -> int32 -> (int32 * int32)
val forward_display_line:
  t structure ptr -> Text_iter.t structure ptr -> bool
val forward_display_line_end:
  t structure ptr -> Text_iter.t structure ptr -> bool
val get_accepts_tab:
  t structure ptr -> bool
val get_border_window_size:
  t structure ptr -> Text_window_type.t -> int32
val get_bottom_margin:
  t structure ptr -> int32
(*Not implemented gtk_text_view_get_buffer return type object not handled*)
val get_cursor_locations :
  t structure ptr -> Text_iter.t structure ptr option -> (Rectangle.t structure * Rectangle.t structure)
val get_cursor_visible:
  t structure ptr -> bool
val get_default_attributes:
  t structure ptr -> Text_attributes.t structure ptr
val get_editable:
  t structure ptr -> bool
(*Not implemented gtk_text_view_get_hadjustment return type object not handled*)
val get_indent:
  t structure ptr -> int32
val get_input_hints:
  t structure ptr -> Input_hints.t_list
val get_input_purpose:
  t structure ptr -> Input_purpose.t
val get_iter_at_location :
  t structure ptr -> int32 -> int32 -> (bool * Text_iter.t structure)
val get_iter_at_position :
  t structure ptr -> int32 -> int32 -> (bool * Text_iter.t structure * int32)
val get_iter_location :
  t structure ptr -> Text_iter.t structure ptr -> (Rectangle.t structure)
val get_justification:
  t structure ptr -> Justification.t
val get_left_margin:
  t structure ptr -> int32
val get_line_at_y :
  t structure ptr -> int32 -> (Text_iter.t structure * int32)
val get_line_yrange :
  t structure ptr -> Text_iter.t structure ptr -> (int32 * int32)
val get_monospace:
  t structure ptr -> bool
val get_overwrite:
  t structure ptr -> bool
val get_pixels_above_lines:
  t structure ptr -> int32
val get_pixels_below_lines:
  t structure ptr -> int32
val get_pixels_inside_wrap:
  t structure ptr -> int32
val get_right_margin:
  t structure ptr -> int32
val get_tabs:
  t structure ptr -> Tab_array.t structure ptr option
val get_top_margin:
  t structure ptr -> int32
(*Not implemented gtk_text_view_get_vadjustment return type object not handled*)
val get_visible_rect :
  t structure ptr -> (Rectangle.t structure)
(*Not implemented gtk_text_view_get_window return type object not handled*)
(*Not implemented gtk_text_view_get_window_type type object not implemented*)
val get_wrap_mode:
  t structure ptr -> Wrap_mode.t
val im_context_filter_keypress:
  t structure ptr -> Event_key.t structure ptr -> bool
(*Not implemented gtk_text_view_move_child type object not implemented*)
(*Not implemented gtk_text_view_move_mark_onscreen type object not implemented*)
val move_visually:
  t structure ptr -> Text_iter.t structure ptr -> int32 -> bool
val place_cursor_onscreen:
  t structure ptr -> bool
val reset_cursor_blink:
  t structure ptr -> unit
val reset_im_context:
  t structure ptr -> unit
(*Not implemented gtk_text_view_scroll_mark_onscreen type object not implemented*)
val scroll_to_iter:
  t structure ptr -> Text_iter.t structure ptr -> float -> bool -> float -> float -> bool
(*Not implemented gtk_text_view_scroll_to_mark type object not implemented*)
val set_accepts_tab:
  t structure ptr -> bool -> unit
val set_border_window_size:
  t structure ptr -> Text_window_type.t -> int32 -> unit
val set_bottom_margin:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_text_view_set_buffer type object not implemented*)
val set_cursor_visible:
  t structure ptr -> bool -> unit
val set_editable:
  t structure ptr -> bool -> unit
val set_indent:
  t structure ptr -> int32 -> unit
val set_input_hints:
  t structure ptr -> Input_hints.t_list -> unit
val set_input_purpose:
  t structure ptr -> Input_purpose.t -> unit
val set_justification:
  t structure ptr -> Justification.t -> unit
val set_left_margin:
  t structure ptr -> int32 -> unit
val set_monospace:
  t structure ptr -> bool -> unit
val set_overwrite:
  t structure ptr -> bool -> unit
val set_pixels_above_lines:
  t structure ptr -> int32 -> unit
val set_pixels_below_lines:
  t structure ptr -> int32 -> unit
val set_pixels_inside_wrap:
  t structure ptr -> int32 -> unit
val set_right_margin:
  t structure ptr -> int32 -> unit
val set_tabs:
  t structure ptr -> Tab_array.t structure ptr -> unit
val set_top_margin:
  t structure ptr -> int32 -> unit
val set_wrap_mode:
  t structure ptr -> Wrap_mode.t -> unit
val starts_display_line:
  t structure ptr -> Text_iter.t structure ptr -> bool
val window_to_buffer_coords :
  t structure ptr -> Text_window_type.t -> int32 -> int32 -> (int32 * int32)
