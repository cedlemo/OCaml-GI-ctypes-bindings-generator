open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_entry_new return type object not handled*)
(*Not implemented gtk_entry_new_with_buffer type object not implemented*)
let get_activates_default =
  foreign "gtk_entry_get_activates_default" (ptr t_typ @-> returning (bool))
let get_alignment =
  foreign "gtk_entry_get_alignment" (ptr t_typ @-> returning (float))
let get_attributes =
  foreign "gtk_entry_get_attributes" (ptr t_typ @-> returning (ptr_opt Attr_list.t_typ))
(*Not implemented gtk_entry_get_buffer return type object not handled*)
(*Not implemented gtk_entry_get_completion return type object not handled*)
let get_current_icon_drag_source =
  foreign "gtk_entry_get_current_icon_drag_source" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_entry_get_cursor_hadjustment return type object not handled*)
let get_has_frame =
  foreign "gtk_entry_get_has_frame" (ptr t_typ @-> returning (bool))
let get_icon_activatable =
  foreign "gtk_entry_get_icon_activatable" (ptr t_typ @-> Entry_icon_position.t_view @-> returning (bool))
let get_icon_area self icon_pos =
  let icon_area_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_icon_area_raw =
    foreign "gtk_entry_get_icon_area" (ptr t_typ @-> Entry_icon_position.t_view @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_icon_area_raw self icon_pos icon_area_ptr in
  let icon_area = !@ icon_area_ptr in
  (icon_area)
let get_icon_at_pos =
  foreign "gtk_entry_get_icon_at_pos" (ptr t_typ @-> int32_t @-> int32_t @-> returning (int32_t))
(*Not implemented gtk_entry_get_icon_gicon return type interface not handled*)
let get_icon_name =
  foreign "gtk_entry_get_icon_name" (ptr t_typ @-> Entry_icon_position.t_view @-> returning (string_opt))
(*Not implemented gtk_entry_get_icon_pixbuf return type object not handled*)
let get_icon_sensitive =
  foreign "gtk_entry_get_icon_sensitive" (ptr t_typ @-> Entry_icon_position.t_view @-> returning (bool))
let get_icon_stock =
  foreign "gtk_entry_get_icon_stock" (ptr t_typ @-> Entry_icon_position.t_view @-> returning (string_opt))
let get_icon_storage_type =
  foreign "gtk_entry_get_icon_storage_type" (ptr t_typ @-> Entry_icon_position.t_view @-> returning (Image_type.t_view))
let get_icon_tooltip_markup =
  foreign "gtk_entry_get_icon_tooltip_markup" (ptr t_typ @-> Entry_icon_position.t_view @-> returning (string_opt))
let get_icon_tooltip_text =
  foreign "gtk_entry_get_icon_tooltip_text" (ptr t_typ @-> Entry_icon_position.t_view @-> returning (string_opt))
let get_inner_border =
  foreign "gtk_entry_get_inner_border" (ptr t_typ @-> returning (ptr_opt Border.t_typ))
let get_input_hints =
  foreign "gtk_entry_get_input_hints" (ptr t_typ @-> returning (Input_hints.t_list_view))
let get_input_purpose =
  foreign "gtk_entry_get_input_purpose" (ptr t_typ @-> returning (Input_purpose.t_view))
(*Not implemented gtk_entry_get_invisible_char return type unichar not handled*)
(*Not implemented gtk_entry_get_layout return type object not handled*)
let get_layout_offsets self =
  let x_ptr = allocate int32_t Int32.zero in
  let y_ptr = allocate int32_t Int32.zero in
  let get_layout_offsets_raw =
    foreign "gtk_entry_get_layout_offsets" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_layout_offsets_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (x, y)
let get_max_length =
  foreign "gtk_entry_get_max_length" (ptr t_typ @-> returning (int32_t))
let get_max_width_chars =
  foreign "gtk_entry_get_max_width_chars" (ptr t_typ @-> returning (int32_t))
let get_overwrite_mode =
  foreign "gtk_entry_get_overwrite_mode" (ptr t_typ @-> returning (bool))
let get_placeholder_text =
  foreign "gtk_entry_get_placeholder_text" (ptr t_typ @-> returning (string_opt))
let get_progress_fraction =
  foreign "gtk_entry_get_progress_fraction" (ptr t_typ @-> returning (double))
let get_progress_pulse_step =
  foreign "gtk_entry_get_progress_pulse_step" (ptr t_typ @-> returning (double))
let get_tabs =
  foreign "gtk_entry_get_tabs" (ptr t_typ @-> returning (ptr_opt Tab_array.t_typ))
let get_text =
  foreign "gtk_entry_get_text" (ptr t_typ @-> returning (string_opt))
let get_text_area self =
  let text_area_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_text_area_raw =
    foreign "gtk_entry_get_text_area" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_text_area_raw self text_area_ptr in
  let text_area = !@ text_area_ptr in
  (text_area)
let get_text_length =
  foreign "gtk_entry_get_text_length" (ptr t_typ @-> returning (uint16_t))
let get_visibility =
  foreign "gtk_entry_get_visibility" (ptr t_typ @-> returning (bool))
let get_width_chars =
  foreign "gtk_entry_get_width_chars" (ptr t_typ @-> returning (int32_t))
let grab_focus_without_selecting =
  foreign "gtk_entry_grab_focus_without_selecting" (ptr t_typ @-> returning (void))
let im_context_filter_keypress =
  foreign "gtk_entry_im_context_filter_keypress" (ptr t_typ @-> ptr Event_key.t_typ @-> returning (bool))
let layout_index_to_text_index =
  foreign "gtk_entry_layout_index_to_text_index" (ptr t_typ @-> int32_t @-> returning (int32_t))
let progress_pulse =
  foreign "gtk_entry_progress_pulse" (ptr t_typ @-> returning (void))
let reset_im_context =
  foreign "gtk_entry_reset_im_context" (ptr t_typ @-> returning (void))
let set_activates_default =
  foreign "gtk_entry_set_activates_default" (ptr t_typ @-> bool @-> returning (void))
let set_alignment =
  foreign "gtk_entry_set_alignment" (ptr t_typ @-> float @-> returning (void))
let set_attributes =
  foreign "gtk_entry_set_attributes" (ptr t_typ @-> ptr Attr_list.t_typ @-> returning (void))
(*Not implemented gtk_entry_set_buffer type object not implemented*)
(*Not implemented gtk_entry_set_completion type object not implemented*)
(*Not implemented gtk_entry_set_cursor_hadjustment type object not implemented*)
let set_has_frame =
  foreign "gtk_entry_set_has_frame" (ptr t_typ @-> bool @-> returning (void))
let set_icon_activatable =
  foreign "gtk_entry_set_icon_activatable" (ptr t_typ @-> Entry_icon_position.t_view @-> bool @-> returning (void))
let set_icon_drag_source =
  foreign "gtk_entry_set_icon_drag_source" (ptr t_typ @-> Entry_icon_position.t_view @-> ptr Target_list.t_typ @-> Drag_action.t_list_view @-> returning (void))
(*Not implemented gtk_entry_set_icon_from_gicon type interface not implemented*)
let set_icon_from_icon_name =
  foreign "gtk_entry_set_icon_from_icon_name" (ptr t_typ @-> Entry_icon_position.t_view @-> string_opt @-> returning (void))
(*Not implemented gtk_entry_set_icon_from_pixbuf type object not implemented*)
let set_icon_from_stock =
  foreign "gtk_entry_set_icon_from_stock" (ptr t_typ @-> Entry_icon_position.t_view @-> string_opt @-> returning (void))
let set_icon_sensitive =
  foreign "gtk_entry_set_icon_sensitive" (ptr t_typ @-> Entry_icon_position.t_view @-> bool @-> returning (void))
let set_icon_tooltip_markup =
  foreign "gtk_entry_set_icon_tooltip_markup" (ptr t_typ @-> Entry_icon_position.t_view @-> string_opt @-> returning (void))
let set_icon_tooltip_text =
  foreign "gtk_entry_set_icon_tooltip_text" (ptr t_typ @-> Entry_icon_position.t_view @-> string_opt @-> returning (void))
let set_inner_border =
  foreign "gtk_entry_set_inner_border" (ptr t_typ @-> ptr_opt Border.t_typ @-> returning (void))
let set_input_hints =
  foreign "gtk_entry_set_input_hints" (ptr t_typ @-> Input_hints.t_list_view @-> returning (void))
let set_input_purpose =
  foreign "gtk_entry_set_input_purpose" (ptr t_typ @-> Input_purpose.t_view @-> returning (void))
(*Not implemented gtk_entry_set_invisible_char type unichar not implemented*)
let set_max_length =
  foreign "gtk_entry_set_max_length" (ptr t_typ @-> int32_t @-> returning (void))
let set_max_width_chars =
  foreign "gtk_entry_set_max_width_chars" (ptr t_typ @-> int32_t @-> returning (void))
let set_overwrite_mode =
  foreign "gtk_entry_set_overwrite_mode" (ptr t_typ @-> bool @-> returning (void))
let set_placeholder_text =
  foreign "gtk_entry_set_placeholder_text" (ptr t_typ @-> string_opt @-> returning (void))
let set_progress_fraction =
  foreign "gtk_entry_set_progress_fraction" (ptr t_typ @-> double @-> returning (void))
let set_progress_pulse_step =
  foreign "gtk_entry_set_progress_pulse_step" (ptr t_typ @-> double @-> returning (void))
let set_tabs =
  foreign "gtk_entry_set_tabs" (ptr t_typ @-> ptr Tab_array.t_typ @-> returning (void))
let set_text =
  foreign "gtk_entry_set_text" (ptr t_typ @-> string @-> returning (void))
let set_visibility =
  foreign "gtk_entry_set_visibility" (ptr t_typ @-> bool @-> returning (void))
let set_width_chars =
  foreign "gtk_entry_set_width_chars" (ptr t_typ @-> int32_t @-> returning (void))
let text_index_to_layout_index =
  foreign "gtk_entry_text_index_to_layout_index" (ptr t_typ @-> int32_t @-> returning (int32_t))
let unset_invisible_char =
  foreign "gtk_entry_unset_invisible_char" (ptr t_typ @-> returning (void))
