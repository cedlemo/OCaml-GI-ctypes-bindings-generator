open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_entry_new return type object not handled*)
(*Not implemented gtk_entry_new_with_buffer type object not implemented*)
val get_activates_default:
  t structure ptr -> bool
val get_alignment:
  t structure ptr -> float
val get_attributes:
  t structure ptr -> Attr_list.t structure ptr option
(*Not implemented gtk_entry_get_buffer return type object not handled*)
(*Not implemented gtk_entry_get_completion return type object not handled*)
val get_current_icon_drag_source:
  t structure ptr -> int32
(*Not implemented gtk_entry_get_cursor_hadjustment return type object not handled*)
val get_has_frame:
  t structure ptr -> bool
val get_icon_activatable:
  t structure ptr -> Entry_icon_position.t -> bool
val get_icon_area :
  t structure ptr -> Entry_icon_position.t -> (Rectangle.t structure)
val get_icon_at_pos:
  t structure ptr -> int32 -> int32 -> int32
(*Not implemented gtk_entry_get_icon_gicon return type interface not handled*)
val get_icon_name:
  t structure ptr -> Entry_icon_position.t -> string option
(*Not implemented gtk_entry_get_icon_pixbuf return type object not handled*)
val get_icon_sensitive:
  t structure ptr -> Entry_icon_position.t -> bool
val get_icon_stock:
  t structure ptr -> Entry_icon_position.t -> string option
val get_icon_storage_type:
  t structure ptr -> Entry_icon_position.t -> Image_type.t
val get_icon_tooltip_markup:
  t structure ptr -> Entry_icon_position.t -> string option
val get_icon_tooltip_text:
  t structure ptr -> Entry_icon_position.t -> string option
val get_inner_border:
  t structure ptr -> Border.t structure ptr option
val get_input_hints:
  t structure ptr -> Input_hints.t_list
val get_input_purpose:
  t structure ptr -> Input_purpose.t
(*Not implemented gtk_entry_get_invisible_char return type unichar not handled*)
(*Not implemented gtk_entry_get_layout return type object not handled*)
val get_layout_offsets :
  t structure ptr -> (int32 * int32)
val get_max_length:
  t structure ptr -> int32
val get_max_width_chars:
  t structure ptr -> int32
val get_overwrite_mode:
  t structure ptr -> bool
val get_placeholder_text:
  t structure ptr -> string option
val get_progress_fraction:
  t structure ptr -> float
val get_progress_pulse_step:
  t structure ptr -> float
val get_tabs:
  t structure ptr -> Tab_array.t structure ptr option
val get_text:
  t structure ptr -> string option
val get_text_area :
  t structure ptr -> (Rectangle.t structure)
val get_text_length:
  t structure ptr -> Unsigned.uint16
val get_visibility:
  t structure ptr -> bool
val get_width_chars:
  t structure ptr -> int32
val grab_focus_without_selecting:
  t structure ptr -> unit
val im_context_filter_keypress:
  t structure ptr -> Event_key.t structure ptr -> bool
val layout_index_to_text_index:
  t structure ptr -> int32 -> int32
val progress_pulse:
  t structure ptr -> unit
val reset_im_context:
  t structure ptr -> unit
val set_activates_default:
  t structure ptr -> bool -> unit
val set_alignment:
  t structure ptr -> float -> unit
val set_attributes:
  t structure ptr -> Attr_list.t structure ptr -> unit
(*Not implemented gtk_entry_set_buffer type object not implemented*)
(*Not implemented gtk_entry_set_completion type object not implemented*)
(*Not implemented gtk_entry_set_cursor_hadjustment type object not implemented*)
val set_has_frame:
  t structure ptr -> bool -> unit
val set_icon_activatable:
  t structure ptr -> Entry_icon_position.t -> bool -> unit
val set_icon_drag_source:
  t structure ptr -> Entry_icon_position.t -> Target_list.t structure ptr -> Drag_action.t_list -> unit
(*Not implemented gtk_entry_set_icon_from_gicon type interface not implemented*)
val set_icon_from_icon_name:
  t structure ptr -> Entry_icon_position.t -> string option -> unit
(*Not implemented gtk_entry_set_icon_from_pixbuf type object not implemented*)
val set_icon_from_stock:
  t structure ptr -> Entry_icon_position.t -> string option -> unit
val set_icon_sensitive:
  t structure ptr -> Entry_icon_position.t -> bool -> unit
val set_icon_tooltip_markup:
  t structure ptr -> Entry_icon_position.t -> string option -> unit
val set_icon_tooltip_text:
  t structure ptr -> Entry_icon_position.t -> string option -> unit
val set_inner_border:
  t structure ptr -> Border.t structure ptr option -> unit
val set_input_hints:
  t structure ptr -> Input_hints.t_list -> unit
val set_input_purpose:
  t structure ptr -> Input_purpose.t -> unit
(*Not implemented gtk_entry_set_invisible_char type unichar not implemented*)
val set_max_length:
  t structure ptr -> int32 -> unit
val set_max_width_chars:
  t structure ptr -> int32 -> unit
val set_overwrite_mode:
  t structure ptr -> bool -> unit
val set_placeholder_text:
  t structure ptr -> string option -> unit
val set_progress_fraction:
  t structure ptr -> float -> unit
val set_progress_pulse_step:
  t structure ptr -> float -> unit
val set_tabs:
  t structure ptr -> Tab_array.t structure ptr -> unit
val set_text:
  t structure ptr -> string -> unit
val set_visibility:
  t structure ptr -> bool -> unit
val set_width_chars:
  t structure ptr -> int32 -> unit
val text_index_to_layout_index:
  t structure ptr -> int32 -> int32
val unset_invisible_char:
  t structure ptr -> unit
