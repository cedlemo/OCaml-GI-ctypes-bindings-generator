open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_buffer :
  Text_buffer.t ptr -> Widget.t ptr
val add_child_at_anchor :
  t -> Widget.t ptr -> Text_child_anchor.t ptr -> unit
val add_child_in_window :
  t -> Widget.t ptr -> Text_window_type.t -> int32 -> int32 -> unit
val backward_display_line :
  t -> Text_iter.t structure ptr -> bool
val backward_display_line_start :
  t -> Text_iter.t structure ptr -> bool
val buffer_to_window_coords :
  t -> Text_window_type.t -> int32 -> int32 -> (int32 * int32)
val forward_display_line :
  t -> Text_iter.t structure ptr -> bool
val forward_display_line_end :
  t -> Text_iter.t structure ptr -> bool
val get_accepts_tab :
  t -> bool
val get_border_window_size :
  t -> Text_window_type.t -> int32
val get_bottom_margin :
  t -> int32
val get_buffer :
  t -> Text_buffer.t ptr
val get_cursor_locations :
  t -> Text_iter.t structure ptr option -> (Rectangle.t structure * Rectangle.t structure)
val get_cursor_visible :
  t -> bool
val get_default_attributes :
  t -> Text_attributes.t structure ptr
val get_editable :
  t -> bool
val get_hadjustment :
  t -> Adjustment.t ptr
val get_indent :
  t -> int32
val get_input_hints :
  t -> Input_hints.t_list
val get_input_purpose :
  t -> Input_purpose.t
val get_iter_at_location :
  t -> int32 -> int32 -> (bool * Text_iter.t structure)
val get_iter_at_position :
  t -> int32 -> int32 -> (bool * Text_iter.t structure * int32)
val get_iter_location :
  t -> Text_iter.t structure ptr -> (Rectangle.t structure)
val get_justification :
  t -> Justification.t
val get_left_margin :
  t -> int32
val get_line_at_y :
  t -> int32 -> (Text_iter.t structure * int32)
val get_line_yrange :
  t -> Text_iter.t structure ptr -> (int32 * int32)
val get_monospace :
  t -> bool
val get_overwrite :
  t -> bool
val get_pixels_above_lines :
  t -> int32
val get_pixels_below_lines :
  t -> int32
val get_pixels_inside_wrap :
  t -> int32
val get_right_margin :
  t -> int32
val get_tabs :
  t -> Tab_array.t structure ptr option
val get_top_margin :
  t -> int32
val get_vadjustment :
  t -> Adjustment.t ptr
val get_visible_rect :
  t -> (Rectangle.t structure)
val get_window :
  t -> Text_window_type.t -> Window.t ptr option
val get_window_type :
  t -> Window.t ptr -> Text_window_type.t
val get_wrap_mode :
  t -> Wrap_mode.t
val im_context_filter_keypress :
  t -> Event_key.t structure ptr -> bool
val move_child :
  t -> Widget.t ptr -> int32 -> int32 -> unit
val move_mark_onscreen :
  t -> Text_mark.t ptr -> bool
val move_visually :
  t -> Text_iter.t structure ptr -> int32 -> bool
val place_cursor_onscreen :
  t -> bool
val reset_cursor_blink :
  t -> unit
val reset_im_context :
  t -> unit
val scroll_mark_onscreen :
  t -> Text_mark.t ptr -> unit
val scroll_to_iter :
  t -> Text_iter.t structure ptr -> float -> bool -> float -> float -> bool
val scroll_to_mark :
  t -> Text_mark.t ptr -> float -> bool -> float -> float -> unit
val set_accepts_tab :
  t -> bool -> unit
val set_border_window_size :
  t -> Text_window_type.t -> int32 -> unit
val set_bottom_margin :
  t -> int32 -> unit
val set_buffer :
  t -> Text_buffer.t ptr option -> unit
val set_cursor_visible :
  t -> bool -> unit
val set_editable :
  t -> bool -> unit
val set_indent :
  t -> int32 -> unit
val set_input_hints :
  t -> Input_hints.t_list -> unit
val set_input_purpose :
  t -> Input_purpose.t -> unit
val set_justification :
  t -> Justification.t -> unit
val set_left_margin :
  t -> int32 -> unit
val set_monospace :
  t -> bool -> unit
val set_overwrite :
  t -> bool -> unit
val set_pixels_above_lines :
  t -> int32 -> unit
val set_pixels_below_lines :
  t -> int32 -> unit
val set_pixels_inside_wrap :
  t -> int32 -> unit
val set_right_margin :
  t -> int32 -> unit
val set_tabs :
  t -> Tab_array.t structure ptr -> unit
val set_top_margin :
  t -> int32 -> unit
val set_wrap_mode :
  t -> Wrap_mode.t -> unit
val starts_display_line :
  t -> Text_iter.t structure ptr -> bool
val window_to_buffer_coords :
  t -> Text_window_type.t -> int32 -> int32 -> (int32 * int32)
