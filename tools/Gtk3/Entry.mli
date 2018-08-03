open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_buffer :
  Entry_buffer.t ptr -> Widget.t ptr
val get_activates_default :
  t -> bool
val get_alignment :
  t -> float
val get_attributes :
  t -> Attr_list.t structure ptr option
val get_buffer :
  t -> Entry_buffer.t ptr
val get_completion :
  t -> Entry_completion.t ptr
val get_current_icon_drag_source :
  t -> int32
val get_cursor_hadjustment :
  t -> Adjustment.t ptr option
val get_has_frame :
  t -> bool
val get_icon_activatable :
  t -> Entry_icon_position.t -> bool
val get_icon_area :
  t -> Entry_icon_position.t -> (Rectangle.t structure)
val get_icon_at_pos :
  t -> int32 -> int32 -> int32
(*Not implemented gtk_entry_get_icon_gicon return type interface not handled*)
val get_icon_name :
  t -> Entry_icon_position.t -> string option
val get_icon_pixbuf :
  t -> Entry_icon_position.t -> Pixbuf.t ptr option
val get_icon_sensitive :
  t -> Entry_icon_position.t -> bool
val get_icon_stock :
  t -> Entry_icon_position.t -> string option
val get_icon_storage_type :
  t -> Entry_icon_position.t -> Image_type.t
val get_icon_tooltip_markup :
  t -> Entry_icon_position.t -> string option
val get_icon_tooltip_text :
  t -> Entry_icon_position.t -> string option
val get_inner_border :
  t -> Border.t structure ptr option
val get_input_hints :
  t -> Input_hints.t_list
val get_input_purpose :
  t -> Input_purpose.t
(*Not implemented gtk_entry_get_invisible_char return type unichar not handled*)
val get_layout :
  t -> Layout.t ptr
val get_layout_offsets :
  t -> (int32 * int32)
val get_max_length :
  t -> int32
val get_max_width_chars :
  t -> int32
val get_overwrite_mode :
  t -> bool
val get_placeholder_text :
  t -> string option
val get_progress_fraction :
  t -> float
val get_progress_pulse_step :
  t -> float
val get_tabs :
  t -> Tab_array.t structure ptr option
val get_text :
  t -> string option
val get_text_area :
  t -> (Rectangle.t structure)
val get_text_length :
  t -> Unsigned.uint16
val get_visibility :
  t -> bool
val get_width_chars :
  t -> int32
val grab_focus_without_selecting :
  t -> unit
val im_context_filter_keypress :
  t -> Event_key.t structure ptr -> bool
val layout_index_to_text_index :
  t -> int32 -> int32
val progress_pulse :
  t -> unit
val reset_im_context :
  t -> unit
val set_activates_default :
  t -> bool -> unit
val set_alignment :
  t -> float -> unit
val set_attributes :
  t -> Attr_list.t structure ptr -> unit
val set_buffer :
  t -> Entry_buffer.t ptr -> unit
val set_completion :
  t -> Entry_completion.t ptr option -> unit
val set_cursor_hadjustment :
  t -> Adjustment.t ptr option -> unit
val set_has_frame :
  t -> bool -> unit
val set_icon_activatable :
  t -> Entry_icon_position.t -> bool -> unit
val set_icon_drag_source :
  t -> Entry_icon_position.t -> Target_list.t structure ptr -> Drag_action.t_list -> unit
(*Not implemented gtk_entry_set_icon_from_gicon type interface not implemented*)
val set_icon_from_icon_name :
  t -> Entry_icon_position.t -> string option -> unit
val set_icon_from_pixbuf :
  t -> Entry_icon_position.t -> Pixbuf.t ptr option -> unit
val set_icon_from_stock :
  t -> Entry_icon_position.t -> string option -> unit
val set_icon_sensitive :
  t -> Entry_icon_position.t -> bool -> unit
val set_icon_tooltip_markup :
  t -> Entry_icon_position.t -> string option -> unit
val set_icon_tooltip_text :
  t -> Entry_icon_position.t -> string option -> unit
val set_inner_border :
  t -> Border.t structure ptr option -> unit
val set_input_hints :
  t -> Input_hints.t_list -> unit
val set_input_purpose :
  t -> Input_purpose.t -> unit
(*Not implemented gtk_entry_set_invisible_char type unichar not implemented*)
val set_max_length :
  t -> int32 -> unit
val set_max_width_chars :
  t -> int32 -> unit
val set_overwrite_mode :
  t -> bool -> unit
val set_placeholder_text :
  t -> string option -> unit
val set_progress_fraction :
  t -> float -> unit
val set_progress_pulse_step :
  t -> float -> unit
val set_tabs :
  t -> Tab_array.t structure ptr -> unit
val set_text :
  t -> string -> unit
val set_visibility :
  t -> bool -> unit
val set_width_chars :
  t -> int32 -> unit
val text_index_to_layout_index :
  t -> int32 -> int32
val unset_invisible_char :
  t -> unit
