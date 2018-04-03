open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_style_context_new" (void @-> returning (t_typ))
(*Not implemented gtk_style_context_add_provider_for_screen type interface not implemented*)
(*Not implemented gtk_style_context_remove_provider_for_screen type interface not implemented*)
let reset_widgets =
  foreign "gtk_style_context_reset_widgets" (Screen.t_typ @-> returning (void))
let add_class =
  foreign "gtk_style_context_add_class" (t_typ @-> string @-> returning (void))
(*Not implemented gtk_style_context_add_provider type interface not implemented*)
let add_region =
  foreign "gtk_style_context_add_region" (t_typ @-> string @-> Region_flags.t_list_view @-> returning (void))
let cancel_animations =
  foreign "gtk_style_context_cancel_animations" (t_typ @-> ptr_opt void @-> returning (void))
let get_background_color self state =
  let get_background_color_raw =
    foreign "gtk_style_context_get_background_color" (t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning (void))
  in
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let ret = get_background_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)let get_border self state =
  let get_border_raw =
    foreign "gtk_style_context_get_border" (t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning (void))
  in
  let border_ptr = allocate Border.t_typ (make Border.t_typ) in
  let ret = get_border_raw self state border_ptr in
  let border = !@ border_ptr in
  (border)let get_border_color self state =
  let get_border_color_raw =
    foreign "gtk_style_context_get_border_color" (t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning (void))
  in
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let ret = get_border_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)let get_color self state =
  let get_color_raw =
    foreign "gtk_style_context_get_color" (t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning (void))
  in
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let ret = get_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)let get_direction =
  foreign "gtk_style_context_get_direction" (t_typ @-> returning (Text_direction.t_view))
let get_font =
  foreign "gtk_style_context_get_font" (t_typ @-> State_flags.t_list_view @-> returning (ptr Font_description.t_typ))
let get_frame_clock =
  foreign "gtk_style_context_get_frame_clock" (t_typ @-> returning (Frame_clock.t_typ))
let get_junction_sides =
  foreign "gtk_style_context_get_junction_sides" (t_typ @-> returning (Junction_sides.t_list_view))
let get_margin self state =
  let get_margin_raw =
    foreign "gtk_style_context_get_margin" (t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning (void))
  in
  let margin_ptr = allocate Border.t_typ (make Border.t_typ) in
  let ret = get_margin_raw self state margin_ptr in
  let margin = !@ margin_ptr in
  (margin)let get_padding self state =
  let get_padding_raw =
    foreign "gtk_style_context_get_padding" (t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning (void))
  in
  let padding_ptr = allocate Border.t_typ (make Border.t_typ) in
  let ret = get_padding_raw self state padding_ptr in
  let padding = !@ padding_ptr in
  (padding)let get_parent =
  foreign "gtk_style_context_get_parent" (t_typ @-> returning (t_typ))
let get_path =
  foreign "gtk_style_context_get_path" (t_typ @-> returning (ptr Widget_path.t_typ))
let get_property self property state =
  let get_property_raw =
    foreign "gtk_style_context_get_property" (t_typ @-> string @-> State_flags.t_list_view @-> ptr (Value.t_typ) @-> returning (void))
  in
  let value_ptr = allocate Value.t_typ (make Value.t_typ) in
  let ret = get_property_raw self property state value_ptr in
  let value = !@ value_ptr in
  (value)let get_scale =
  foreign "gtk_style_context_get_scale" (t_typ @-> returning (int32_t))
let get_screen =
  foreign "gtk_style_context_get_screen" (t_typ @-> returning (Screen.t_typ))
let get_section =
  foreign "gtk_style_context_get_section" (t_typ @-> string @-> returning (ptr_opt Css_section.t_typ))
let get_state =
  foreign "gtk_style_context_get_state" (t_typ @-> returning (State_flags.t_list_view))
let get_style_property =
  foreign "gtk_style_context_get_style_property" (t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let has_class =
  foreign "gtk_style_context_has_class" (t_typ @-> string @-> returning (bool))
let has_region self region_name =
  let has_region_raw =
    foreign "gtk_style_context_has_region" (t_typ @-> string @-> ptr (Region_flags.t_list_view) @-> returning (bool))
  in
  let flags_return_ptr = allocate Region_flags.t_view (Region_flags.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = has_region_raw self region_name flags_return_ptr in
  let flags_return = (!@ flags_return_ptr) in
  (ret, flags_return)let invalidate =
  foreign "gtk_style_context_invalidate" (t_typ @-> returning (void))
let list_classes =
  foreign "gtk_style_context_list_classes" (t_typ @-> returning (ptr List.t_typ))
let list_regions =
  foreign "gtk_style_context_list_regions" (t_typ @-> returning (ptr List.t_typ))
let lookup_color self color_name =
  let lookup_color_raw =
    foreign "gtk_style_context_lookup_color" (t_typ @-> string @-> ptr (RGBA.t_typ) @-> returning (bool))
  in
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let ret = lookup_color_raw self color_name color_ptr in
  let color = !@ color_ptr in
  (ret, color)let lookup_icon_set =
  foreign "gtk_style_context_lookup_icon_set" (t_typ @-> string @-> returning (ptr_opt Icon_set.t_typ))
let notify_state_change =
  foreign "gtk_style_context_notify_state_change" (t_typ @-> Window.t_typ @-> ptr_opt void @-> State_type.t_view @-> bool @-> returning (void))
let pop_animatable_region =
  foreign "gtk_style_context_pop_animatable_region" (t_typ @-> returning (void))
let push_animatable_region =
  foreign "gtk_style_context_push_animatable_region" (t_typ @-> ptr_opt void @-> returning (void))
let remove_class =
  foreign "gtk_style_context_remove_class" (t_typ @-> string @-> returning (void))
(*Not implemented gtk_style_context_remove_provider type interface not implemented*)
let remove_region =
  foreign "gtk_style_context_remove_region" (t_typ @-> string @-> returning (void))
let restore =
  foreign "gtk_style_context_restore" (t_typ @-> returning (void))
let save =
  foreign "gtk_style_context_save" (t_typ @-> returning (void))
let scroll_animations =
  foreign "gtk_style_context_scroll_animations" (t_typ @-> Window.t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_background =
  foreign "gtk_style_context_set_background" (t_typ @-> Window.t_typ @-> returning (void))
let set_direction =
  foreign "gtk_style_context_set_direction" (t_typ @-> Text_direction.t_view @-> returning (void))
let set_frame_clock =
  foreign "gtk_style_context_set_frame_clock" (t_typ @-> Frame_clock.t_typ @-> returning (void))
let set_junction_sides =
  foreign "gtk_style_context_set_junction_sides" (t_typ @-> Junction_sides.t_list_view @-> returning (void))
let set_parent =
  foreign "gtk_style_context_set_parent" (t_typ @-> t_typ @-> returning (void))
let set_path =
  foreign "gtk_style_context_set_path" (t_typ @-> ptr Widget_path.t_typ @-> returning (void))
let set_scale =
  foreign "gtk_style_context_set_scale" (t_typ @-> int32_t @-> returning (void))
let set_screen =
  foreign "gtk_style_context_set_screen" (t_typ @-> Screen.t_typ @-> returning (void))
let set_state =
  foreign "gtk_style_context_set_state" (t_typ @-> State_flags.t_list_view @-> returning (void))
let state_is_running self state =
  let state_is_running_raw =
    foreign "gtk_style_context_state_is_running" (t_typ @-> State_type.t_view @-> ptr (double) @-> returning (bool))
  in
  let progress_ptr = allocate double 0.0 in
  let ret = state_is_running_raw self state progress_ptr in
  let progress = !@ progress_ptr in
  (ret, progress)let to_string =
  foreign "gtk_style_context_to_string" (t_typ @-> Style_context_print_flags.t_list_view @-> returning (string_opt))
