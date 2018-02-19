open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_style_context_new return type object not handled*)
(*Not implemented gtk_style_context_add_provider_for_screen type object not implemented*)
(*Not implemented gtk_style_context_remove_provider_for_screen type object not implemented*)
(*Not implemented gtk_style_context_reset_widgets type object not implemented*)
let add_class =
  foreign "gtk_style_context_add_class" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_style_context_add_provider type interface not implemented*)
let add_region =
  foreign "gtk_style_context_add_region" (ptr t_typ @-> string @-> Region_flags.t_list_view @-> returning (void))
let cancel_animations =
  foreign "gtk_style_context_cancel_animations" (ptr t_typ @-> ptr_opt void @-> returning (void))
let get_background_color self state =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let get_background_color_raw =
    foreign "gtk_style_context_get_background_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning void)
  in
  let ret = get_background_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)
let get_border self state =
  let border_ptr = allocate Border.t_typ (make Border.t_typ) in
  let get_border_raw =
    foreign "gtk_style_context_get_border" (ptr t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning void)
  in
  let ret = get_border_raw self state border_ptr in
  let border = !@ border_ptr in
  (border)
let get_border_color self state =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let get_border_color_raw =
    foreign "gtk_style_context_get_border_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning void)
  in
  let ret = get_border_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)
let get_color self state =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let get_color_raw =
    foreign "gtk_style_context_get_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning void)
  in
  let ret = get_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)
let get_direction =
  foreign "gtk_style_context_get_direction" (ptr t_typ @-> returning (Text_direction.t_view))
let get_font =
  foreign "gtk_style_context_get_font" (ptr t_typ @-> State_flags.t_list_view @-> returning (ptr Font_description.t_typ))
(*Not implemented gtk_style_context_get_frame_clock return type object not handled*)
let get_junction_sides =
  foreign "gtk_style_context_get_junction_sides" (ptr t_typ @-> returning (Junction_sides.t_list_view))
let get_margin self state =
  let margin_ptr = allocate Border.t_typ (make Border.t_typ) in
  let get_margin_raw =
    foreign "gtk_style_context_get_margin" (ptr t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning void)
  in
  let ret = get_margin_raw self state margin_ptr in
  let margin = !@ margin_ptr in
  (margin)
let get_padding self state =
  let padding_ptr = allocate Border.t_typ (make Border.t_typ) in
  let get_padding_raw =
    foreign "gtk_style_context_get_padding" (ptr t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning void)
  in
  let ret = get_padding_raw self state padding_ptr in
  let padding = !@ padding_ptr in
  (padding)
(*Not implemented gtk_style_context_get_parent return type object not handled*)
let get_path =
  foreign "gtk_style_context_get_path" (ptr t_typ @-> returning (ptr Widget_path.t_typ))
let get_property self property state =
  let value_ptr = allocate Value.t_typ (make Value.t_typ) in
  let get_property_raw =
    foreign "gtk_style_context_get_property" (ptr t_typ @-> string @-> State_flags.t_list_view @-> ptr (Value.t_typ) @-> returning void)
  in
  let ret = get_property_raw self property state value_ptr in
  let value = !@ value_ptr in
  (value)
let get_scale =
  foreign "gtk_style_context_get_scale" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_style_context_get_screen return type object not handled*)
let get_section =
  foreign "gtk_style_context_get_section" (ptr t_typ @-> string @-> returning (ptr_opt Css_section.t_typ))
let get_state =
  foreign "gtk_style_context_get_state" (ptr t_typ @-> returning (State_flags.t_list_view))
let get_style_property =
  foreign "gtk_style_context_get_style_property" (ptr t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let has_class =
  foreign "gtk_style_context_has_class" (ptr t_typ @-> string @-> returning (bool))
let has_region self region_name =
  let flags_return_ptr = allocate Region_flags.t_view (Region_flags.t_view.of_value (Unsigned.UInt32.zero)) in
  let has_region_raw =
    foreign "gtk_style_context_has_region" (ptr t_typ @-> string @-> ptr (Region_flags.t_list_view) @-> returning bool)
  in
  let ret = has_region_raw self region_name flags_return_ptr in
  let flags_return = (!@ flags_return_ptr) in
  (ret, flags_return)
let invalidate =
  foreign "gtk_style_context_invalidate" (ptr t_typ @-> returning (void))
let list_classes =
  foreign "gtk_style_context_list_classes" (ptr t_typ @-> returning (ptr List.t_typ))
let list_regions =
  foreign "gtk_style_context_list_regions" (ptr t_typ @-> returning (ptr List.t_typ))
let lookup_color self color_name =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let lookup_color_raw =
    foreign "gtk_style_context_lookup_color" (ptr t_typ @-> string @-> ptr (RGBA.t_typ) @-> returning bool)
  in
  let ret = lookup_color_raw self color_name color_ptr in
  let color = !@ color_ptr in
  (ret, color)
let lookup_icon_set =
  foreign "gtk_style_context_lookup_icon_set" (ptr t_typ @-> string @-> returning (ptr_opt Icon_set.t_typ))
(*Not implemented gtk_style_context_notify_state_change type object not implemented*)
let pop_animatable_region =
  foreign "gtk_style_context_pop_animatable_region" (ptr t_typ @-> returning (void))
let push_animatable_region =
  foreign "gtk_style_context_push_animatable_region" (ptr t_typ @-> ptr_opt void @-> returning (void))
let remove_class =
  foreign "gtk_style_context_remove_class" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_style_context_remove_provider type interface not implemented*)
let remove_region =
  foreign "gtk_style_context_remove_region" (ptr t_typ @-> string @-> returning (void))
let restore =
  foreign "gtk_style_context_restore" (ptr t_typ @-> returning (void))
let save =
  foreign "gtk_style_context_save" (ptr t_typ @-> returning (void))
(*Not implemented gtk_style_context_scroll_animations type object not implemented*)
(*Not implemented gtk_style_context_set_background type object not implemented*)
let set_direction =
  foreign "gtk_style_context_set_direction" (ptr t_typ @-> Text_direction.t_view @-> returning (void))
(*Not implemented gtk_style_context_set_frame_clock type object not implemented*)
let set_junction_sides =
  foreign "gtk_style_context_set_junction_sides" (ptr t_typ @-> Junction_sides.t_list_view @-> returning (void))
(*Not implemented gtk_style_context_set_parent type object not implemented*)
let set_path =
  foreign "gtk_style_context_set_path" (ptr t_typ @-> ptr Widget_path.t_typ @-> returning (void))
let set_scale =
  foreign "gtk_style_context_set_scale" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_style_context_set_screen type object not implemented*)
let set_state =
  foreign "gtk_style_context_set_state" (ptr t_typ @-> State_flags.t_list_view @-> returning (void))
let state_is_running self state =
  let progress_ptr = allocate double 0.0 in
  let state_is_running_raw =
    foreign "gtk_style_context_state_is_running" (ptr t_typ @-> State_type.t_view @-> ptr (double) @-> returning bool)
  in
  let ret = state_is_running_raw self state progress_ptr in
  let progress = !@ progress_ptr in
  (ret, progress)
let to_string =
  foreign "gtk_style_context_to_string" (ptr t_typ @-> Style_context_print_flags.t_list_view @-> returning (string_opt))
