open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_default_direction =
  foreign "gtk_widget_get_default_direction" (void @-> returning (Text_direction.t_view))
(*Not implemented gtk_widget_get_default_style return type object not handled*)
let pop_composite_child =
  foreign "gtk_widget_pop_composite_child" (void @-> returning (void))
let push_composite_child =
  foreign "gtk_widget_push_composite_child" (void @-> returning (void))
let set_default_direction =
  foreign "gtk_widget_set_default_direction" (Text_direction.t_view @-> returning (void))
let activate =
  foreign "gtk_widget_activate" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_widget_add_accelerator type object not implemented*)
(*Not implemented gtk_widget_add_device_events type object not implemented*)
let add_events =
  foreign "gtk_widget_add_events" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_widget_add_mnemonic_label type object not implemented*)
(*Not implemented gtk_widget_add_tick_callback type callback not implemented*)
let can_activate_accel =
  foreign "gtk_widget_can_activate_accel" (ptr t_typ @-> uint32_t @-> returning (bool))
let child_focus =
  foreign "gtk_widget_child_focus" (ptr t_typ @-> Direction_type.t_view @-> returning (bool))
let child_notify =
  foreign "gtk_widget_child_notify" (ptr t_typ @-> string @-> returning (void))
let class_path self =
  let path_length_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let path_ptr = allocate string " " in
  let path_reversed_ptr = allocate string " " in
  let class_path_raw =
    foreign "gtk_widget_class_path" (ptr t_typ @-> ptr (uint32_t) @-> ptr (string) @-> ptr (string) @-> returning void)
  in
  let ret = class_path_raw self path_length_ptr path_ptr path_reversed_ptr in
  let path_length = !@ path_length_ptr in
  let path = !@ path_ptr in
  let path_reversed = !@ path_reversed_ptr in
  (path_length, path, path_reversed)
let compute_expand =
  foreign "gtk_widget_compute_expand" (ptr t_typ @-> Orientation.t_view @-> returning (bool))
(*Not implemented gtk_widget_create_pango_context return type object not handled*)
(*Not implemented gtk_widget_create_pango_layout return type object not handled*)
let destroy =
  foreign "gtk_widget_destroy" (ptr t_typ @-> returning (void))
(*Not implemented gtk_widget_destroyed type object not implemented*)
(*Not implemented gtk_widget_device_is_shadowed type object not implemented*)
(*Not implemented gtk_drag_begin type union not implemented*)
(*Not implemented gtk_drag_begin_with_coordinates type union not implemented*)
let drag_check_threshold =
  foreign "gtk_drag_check_threshold" (ptr t_typ @-> int32_t @-> int32_t @-> int32_t @-> int32_t @-> returning (bool))
let drag_dest_add_image_targets =
  foreign "gtk_drag_dest_add_image_targets" (ptr t_typ @-> returning (void))
let drag_dest_add_text_targets =
  foreign "gtk_drag_dest_add_text_targets" (ptr t_typ @-> returning (void))
let drag_dest_add_uri_targets =
  foreign "gtk_drag_dest_add_uri_targets" (ptr t_typ @-> returning (void))
(*Not implemented gtk_drag_dest_find_target type object not implemented*)
let drag_dest_get_target_list =
  foreign "gtk_drag_dest_get_target_list" (ptr t_typ @-> returning (ptr_opt Target_list.t_typ))
let drag_dest_get_track_motion =
  foreign "gtk_drag_dest_get_track_motion" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_drag_dest_set type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_drag_dest_set_proxy type object not implemented*)
let drag_dest_set_target_list =
  foreign "gtk_drag_dest_set_target_list" (ptr t_typ @-> ptr_opt Target_list.t_typ @-> returning (void))
let drag_dest_set_track_motion =
  foreign "gtk_drag_dest_set_track_motion" (ptr t_typ @-> bool @-> returning (void))
let drag_dest_unset =
  foreign "gtk_drag_dest_unset" (ptr t_typ @-> returning (void))
(*Not implemented gtk_drag_get_data type object not implemented*)
let drag_highlight =
  foreign "gtk_drag_highlight" (ptr t_typ @-> returning (void))
let drag_source_add_image_targets =
  foreign "gtk_drag_source_add_image_targets" (ptr t_typ @-> returning (void))
let drag_source_add_text_targets =
  foreign "gtk_drag_source_add_text_targets" (ptr t_typ @-> returning (void))
let drag_source_add_uri_targets =
  foreign "gtk_drag_source_add_uri_targets" (ptr t_typ @-> returning (void))
let drag_source_get_target_list =
  foreign "gtk_drag_source_get_target_list" (ptr t_typ @-> returning (ptr_opt Target_list.t_typ))
(*Not implemented gtk_drag_source_set type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_drag_source_set_icon_gicon type interface not implemented*)
let drag_source_set_icon_name =
  foreign "gtk_drag_source_set_icon_name" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_drag_source_set_icon_pixbuf type object not implemented*)
let drag_source_set_icon_stock =
  foreign "gtk_drag_source_set_icon_stock" (ptr t_typ @-> string @-> returning (void))
let drag_source_set_target_list =
  foreign "gtk_drag_source_set_target_list" (ptr t_typ @-> ptr_opt Target_list.t_typ @-> returning (void))
let drag_source_unset =
  foreign "gtk_drag_source_unset" (ptr t_typ @-> returning (void))
let drag_unhighlight =
  foreign "gtk_drag_unhighlight" (ptr t_typ @-> returning (void))
let draw =
  foreign "gtk_widget_draw" (ptr t_typ @-> ptr Context.t_typ @-> returning (void))
let ensure_style =
  foreign "gtk_widget_ensure_style" (ptr t_typ @-> returning (void))
let error_bell =
  foreign "gtk_widget_error_bell" (ptr t_typ @-> returning (void))
(*Not implemented gtk_widget_event type union not implemented*)
let freeze_child_notify =
  foreign "gtk_widget_freeze_child_notify" (ptr t_typ @-> returning (void))
(*Not implemented gtk_widget_get_accessible return type object not handled*)
(*Not implemented gtk_widget_get_action_group return type interface not handled*)
let get_allocated_baseline =
  foreign "gtk_widget_get_allocated_baseline" (ptr t_typ @-> returning (int32_t))
let get_allocated_height =
  foreign "gtk_widget_get_allocated_height" (ptr t_typ @-> returning (int32_t))
let get_allocated_size self =
  let allocation_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let baseline_ptr = allocate int32_t Int32.zero in
  let get_allocated_size_raw =
    foreign "gtk_widget_get_allocated_size" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_allocated_size_raw self allocation_ptr baseline_ptr in
  let allocation = !@ allocation_ptr in
  let baseline = !@ baseline_ptr in
  (allocation, baseline)
let get_allocated_width =
  foreign "gtk_widget_get_allocated_width" (ptr t_typ @-> returning (int32_t))
let get_allocation self =
  let allocation_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_allocation_raw =
    foreign "gtk_widget_get_allocation" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_allocation_raw self allocation_ptr in
  let allocation = !@ allocation_ptr in
  (allocation)
(*Not implemented gtk_widget_get_ancestor type gType not implemented*)
let get_app_paintable =
  foreign "gtk_widget_get_app_paintable" (ptr t_typ @-> returning (bool))
let get_can_default =
  foreign "gtk_widget_get_can_default" (ptr t_typ @-> returning (bool))
let get_can_focus =
  foreign "gtk_widget_get_can_focus" (ptr t_typ @-> returning (bool))
let get_child_requisition self =
  let requisition_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let get_child_requisition_raw =
    foreign "gtk_widget_get_child_requisition" (ptr t_typ @-> ptr (Requisition.t_typ) @-> returning void)
  in
  let ret = get_child_requisition_raw self requisition_ptr in
  let requisition = !@ requisition_ptr in
  (requisition)
let get_child_visible =
  foreign "gtk_widget_get_child_visible" (ptr t_typ @-> returning (bool))
let get_clip self =
  let clip_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_clip_raw =
    foreign "gtk_widget_get_clip" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning void)
  in
  let ret = get_clip_raw self clip_ptr in
  let clip = !@ clip_ptr in
  (clip)
(*Not implemented gtk_widget_get_clipboard return type object not handled*)
let get_composite_name =
  foreign "gtk_widget_get_composite_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_widget_get_device_enabled type object not implemented*)
(*Not implemented gtk_widget_get_device_events type object not implemented*)
let get_direction =
  foreign "gtk_widget_get_direction" (ptr t_typ @-> returning (Text_direction.t_view))
(*Not implemented gtk_widget_get_display return type object not handled*)
let get_double_buffered =
  foreign "gtk_widget_get_double_buffered" (ptr t_typ @-> returning (bool))
let get_events =
  foreign "gtk_widget_get_events" (ptr t_typ @-> returning (int32_t))
let get_focus_on_click =
  foreign "gtk_widget_get_focus_on_click" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_widget_get_font_map return type object not handled*)
let get_font_options =
  foreign "gtk_widget_get_font_options" (ptr t_typ @-> returning (ptr_opt Font_options.t_typ))
(*Not implemented gtk_widget_get_frame_clock return type object not handled*)
let get_halign =
  foreign "gtk_widget_get_halign" (ptr t_typ @-> returning (Align.t_view))
let get_has_tooltip =
  foreign "gtk_widget_get_has_tooltip" (ptr t_typ @-> returning (bool))
let get_has_window =
  foreign "gtk_widget_get_has_window" (ptr t_typ @-> returning (bool))
let get_hexpand =
  foreign "gtk_widget_get_hexpand" (ptr t_typ @-> returning (bool))
let get_hexpand_set =
  foreign "gtk_widget_get_hexpand_set" (ptr t_typ @-> returning (bool))
let get_mapped =
  foreign "gtk_widget_get_mapped" (ptr t_typ @-> returning (bool))
let get_margin_bottom =
  foreign "gtk_widget_get_margin_bottom" (ptr t_typ @-> returning (int32_t))
let get_margin_end =
  foreign "gtk_widget_get_margin_end" (ptr t_typ @-> returning (int32_t))
let get_margin_left =
  foreign "gtk_widget_get_margin_left" (ptr t_typ @-> returning (int32_t))
let get_margin_right =
  foreign "gtk_widget_get_margin_right" (ptr t_typ @-> returning (int32_t))
let get_margin_start =
  foreign "gtk_widget_get_margin_start" (ptr t_typ @-> returning (int32_t))
let get_margin_top =
  foreign "gtk_widget_get_margin_top" (ptr t_typ @-> returning (int32_t))
let get_modifier_mask =
  foreign "gtk_widget_get_modifier_mask" (ptr t_typ @-> Modifier_intent.t_view @-> returning (Modifier_type.t_list_view))
(*Not implemented gtk_widget_get_modifier_style return type object not handled*)
let get_name =
  foreign "gtk_widget_get_name" (ptr t_typ @-> returning (string_opt))
let get_no_show_all =
  foreign "gtk_widget_get_no_show_all" (ptr t_typ @-> returning (bool))
let get_opacity =
  foreign "gtk_widget_get_opacity" (ptr t_typ @-> returning (double))
(*Not implemented gtk_widget_get_pango_context return type object not handled*)
(*Not implemented gtk_widget_get_parent return type object not handled*)
(*Not implemented gtk_widget_get_parent_window return type object not handled*)
let get_path =
  foreign "gtk_widget_get_path" (ptr t_typ @-> returning (ptr Widget_path.t_typ))
let get_pointer self =
  let x_ptr = allocate int32_t Int32.zero in
  let y_ptr = allocate int32_t Int32.zero in
  let get_pointer_raw =
    foreign "gtk_widget_get_pointer" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_pointer_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (x, y)
let get_preferred_height self =
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let get_preferred_height_raw =
    foreign "gtk_widget_get_preferred_height" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_height_raw self minimum_height_ptr natural_height_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  (minimum_height, natural_height)
let get_preferred_height_and_baseline_for_width self width =
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let minimum_baseline_ptr = allocate int32_t Int32.zero in
  let natural_baseline_ptr = allocate int32_t Int32.zero in
  let get_preferred_height_and_baseline_for_width_raw =
    foreign "gtk_widget_get_preferred_height_and_baseline_for_width" (ptr t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_height_and_baseline_for_width_raw self width minimum_height_ptr natural_height_ptr minimum_baseline_ptr natural_baseline_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  let minimum_baseline = !@ minimum_baseline_ptr in
  let natural_baseline = !@ natural_baseline_ptr in
  (minimum_height, natural_height, minimum_baseline, natural_baseline)
let get_preferred_height_for_width self width =
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let get_preferred_height_for_width_raw =
    foreign "gtk_widget_get_preferred_height_for_width" (ptr t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_height_for_width_raw self width minimum_height_ptr natural_height_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  (minimum_height, natural_height)
let get_preferred_size self =
  let minimum_size_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let natural_size_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let get_preferred_size_raw =
    foreign "gtk_widget_get_preferred_size" (ptr t_typ @-> ptr (Requisition.t_typ) @-> ptr (Requisition.t_typ) @-> returning void)
  in
  let ret = get_preferred_size_raw self minimum_size_ptr natural_size_ptr in
  let minimum_size = !@ minimum_size_ptr in
  let natural_size = !@ natural_size_ptr in
  (minimum_size, natural_size)
let get_preferred_width self =
  let minimum_width_ptr = allocate int32_t Int32.zero in
  let natural_width_ptr = allocate int32_t Int32.zero in
  let get_preferred_width_raw =
    foreign "gtk_widget_get_preferred_width" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_width_raw self minimum_width_ptr natural_width_ptr in
  let minimum_width = !@ minimum_width_ptr in
  let natural_width = !@ natural_width_ptr in
  (minimum_width, natural_width)
let get_preferred_width_for_height self height =
  let minimum_width_ptr = allocate int32_t Int32.zero in
  let natural_width_ptr = allocate int32_t Int32.zero in
  let get_preferred_width_for_height_raw =
    foreign "gtk_widget_get_preferred_width_for_height" (ptr t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_preferred_width_for_height_raw self height minimum_width_ptr natural_width_ptr in
  let minimum_width = !@ minimum_width_ptr in
  let natural_width = !@ natural_width_ptr in
  (minimum_width, natural_width)
let get_realized =
  foreign "gtk_widget_get_realized" (ptr t_typ @-> returning (bool))
let get_receives_default =
  foreign "gtk_widget_get_receives_default" (ptr t_typ @-> returning (bool))
let get_request_mode =
  foreign "gtk_widget_get_request_mode" (ptr t_typ @-> returning (Size_request_mode.t_view))
let get_requisition self =
  let requisition_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let get_requisition_raw =
    foreign "gtk_widget_get_requisition" (ptr t_typ @-> ptr (Requisition.t_typ) @-> returning void)
  in
  let ret = get_requisition_raw self requisition_ptr in
  let requisition = !@ requisition_ptr in
  (requisition)
(*Not implemented gtk_widget_get_root_window return type object not handled*)
let get_scale_factor =
  foreign "gtk_widget_get_scale_factor" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_widget_get_screen return type object not handled*)
let get_sensitive =
  foreign "gtk_widget_get_sensitive" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_widget_get_settings return type object not handled*)
let get_size_request self =
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_size_request_raw =
    foreign "gtk_widget_get_size_request" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_size_request_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
let get_state =
  foreign "gtk_widget_get_state" (ptr t_typ @-> returning (State_type.t_view))
let get_state_flags =
  foreign "gtk_widget_get_state_flags" (ptr t_typ @-> returning (State_flags.t_list_view))
(*Not implemented gtk_widget_get_style return type object not handled*)
(*Not implemented gtk_widget_get_style_context return type object not handled*)
let get_support_multidevice =
  foreign "gtk_widget_get_support_multidevice" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_widget_get_template_child type gType not implemented*)
let get_tooltip_markup =
  foreign "gtk_widget_get_tooltip_markup" (ptr t_typ @-> returning (string_opt))
let get_tooltip_text =
  foreign "gtk_widget_get_tooltip_text" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_widget_get_tooltip_window return type object not handled*)
(*Not implemented gtk_widget_get_toplevel return type object not handled*)
let get_valign =
  foreign "gtk_widget_get_valign" (ptr t_typ @-> returning (Align.t_view))
let get_valign_with_baseline =
  foreign "gtk_widget_get_valign_with_baseline" (ptr t_typ @-> returning (Align.t_view))
let get_vexpand =
  foreign "gtk_widget_get_vexpand" (ptr t_typ @-> returning (bool))
let get_vexpand_set =
  foreign "gtk_widget_get_vexpand_set" (ptr t_typ @-> returning (bool))
let get_visible =
  foreign "gtk_widget_get_visible" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_widget_get_visual return type object not handled*)
(*Not implemented gtk_widget_get_window return type object not handled*)
let grab_add =
  foreign "gtk_grab_add" (ptr t_typ @-> returning (void))
let grab_default =
  foreign "gtk_widget_grab_default" (ptr t_typ @-> returning (void))
let grab_focus =
  foreign "gtk_widget_grab_focus" (ptr t_typ @-> returning (void))
let grab_remove =
  foreign "gtk_grab_remove" (ptr t_typ @-> returning (void))
let has_default =
  foreign "gtk_widget_has_default" (ptr t_typ @-> returning (bool))
let has_focus =
  foreign "gtk_widget_has_focus" (ptr t_typ @-> returning (bool))
let has_grab =
  foreign "gtk_widget_has_grab" (ptr t_typ @-> returning (bool))
let has_rc_style =
  foreign "gtk_widget_has_rc_style" (ptr t_typ @-> returning (bool))
let has_screen =
  foreign "gtk_widget_has_screen" (ptr t_typ @-> returning (bool))
let has_visible_focus =
  foreign "gtk_widget_has_visible_focus" (ptr t_typ @-> returning (bool))
let hide =
  foreign "gtk_widget_hide" (ptr t_typ @-> returning (void))
let hide_on_delete =
  foreign "gtk_widget_hide_on_delete" (ptr t_typ @-> returning (bool))
let in_destruction =
  foreign "gtk_widget_in_destruction" (ptr t_typ @-> returning (bool))
let init_template =
  foreign "gtk_widget_init_template" (ptr t_typ @-> returning (void))
let input_shape_combine_region =
  foreign "gtk_widget_input_shape_combine_region" (ptr t_typ @-> ptr_opt Region.t_typ @-> returning (void))
(*Not implemented gtk_widget_insert_action_group type interface not implemented*)
let intersect self area =
  let intersection_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let intersect_raw =
    foreign "gtk_widget_intersect" (ptr t_typ @-> ptr Rectangle.t_typ @-> ptr (Rectangle.t_typ) @-> returning bool)
  in
  let ret = intersect_raw self area intersection_ptr in
  let intersection = !@ intersection_ptr in
  (ret, intersection)
(*Not implemented gtk_widget_is_ancestor type object not implemented*)
let is_composited =
  foreign "gtk_widget_is_composited" (ptr t_typ @-> returning (bool))
let is_drawable =
  foreign "gtk_widget_is_drawable" (ptr t_typ @-> returning (bool))
let is_focus =
  foreign "gtk_widget_is_focus" (ptr t_typ @-> returning (bool))
let is_sensitive =
  foreign "gtk_widget_is_sensitive" (ptr t_typ @-> returning (bool))
let is_toplevel =
  foreign "gtk_widget_is_toplevel" (ptr t_typ @-> returning (bool))
let is_visible =
  foreign "gtk_widget_is_visible" (ptr t_typ @-> returning (bool))
let keynav_failed =
  foreign "gtk_widget_keynav_failed" (ptr t_typ @-> Direction_type.t_view @-> returning (bool))
let list_accel_closures =
  foreign "gtk_widget_list_accel_closures" (ptr t_typ @-> returning (ptr List.t_typ))
(*Not implemented gtk_widget_list_action_prefixes return type C Array type for Types.Array tag not handled*)
let list_mnemonic_labels =
  foreign "gtk_widget_list_mnemonic_labels" (ptr t_typ @-> returning (ptr List.t_typ))
let map =
  foreign "gtk_widget_map" (ptr t_typ @-> returning (void))
let mnemonic_activate =
  foreign "gtk_widget_mnemonic_activate" (ptr t_typ @-> bool @-> returning (bool))
let modify_base =
  foreign "gtk_widget_modify_base" (ptr t_typ @-> State_type.t_view @-> ptr_opt Color.t_typ @-> returning (void))
let modify_bg =
  foreign "gtk_widget_modify_bg" (ptr t_typ @-> State_type.t_view @-> ptr_opt Color.t_typ @-> returning (void))
let modify_cursor =
  foreign "gtk_widget_modify_cursor" (ptr t_typ @-> ptr_opt Color.t_typ @-> ptr_opt Color.t_typ @-> returning (void))
let modify_fg =
  foreign "gtk_widget_modify_fg" (ptr t_typ @-> State_type.t_view @-> ptr_opt Color.t_typ @-> returning (void))
let modify_font =
  foreign "gtk_widget_modify_font" (ptr t_typ @-> ptr_opt Font_description.t_typ @-> returning (void))
(*Not implemented gtk_widget_modify_style type object not implemented*)
let modify_text =
  foreign "gtk_widget_modify_text" (ptr t_typ @-> State_type.t_view @-> ptr_opt Color.t_typ @-> returning (void))
let override_background_color =
  foreign "gtk_widget_override_background_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr_opt RGBA.t_typ @-> returning (void))
let override_color =
  foreign "gtk_widget_override_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr_opt RGBA.t_typ @-> returning (void))
let override_cursor =
  foreign "gtk_widget_override_cursor" (ptr t_typ @-> ptr_opt RGBA.t_typ @-> ptr_opt RGBA.t_typ @-> returning (void))
let override_font =
  foreign "gtk_widget_override_font" (ptr t_typ @-> ptr_opt Font_description.t_typ @-> returning (void))
let override_symbolic_color =
  foreign "gtk_widget_override_symbolic_color" (ptr t_typ @-> string @-> ptr_opt RGBA.t_typ @-> returning (void))
let path self =
  let path_length_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let path_ptr = allocate string " " in
  let path_reversed_ptr = allocate string " " in
  let path_raw =
    foreign "gtk_widget_path" (ptr t_typ @-> ptr (uint32_t) @-> ptr (string) @-> ptr (string) @-> returning void)
  in
  let ret = path_raw self path_length_ptr path_ptr path_reversed_ptr in
  let path_length = !@ path_length_ptr in
  let path = !@ path_ptr in
  let path_reversed = !@ path_reversed_ptr in
  (path_length, path, path_reversed)
let queue_allocate =
  foreign "gtk_widget_queue_allocate" (ptr t_typ @-> returning (void))
let queue_compute_expand =
  foreign "gtk_widget_queue_compute_expand" (ptr t_typ @-> returning (void))
let queue_draw =
  foreign "gtk_widget_queue_draw" (ptr t_typ @-> returning (void))
let queue_draw_area =
  foreign "gtk_widget_queue_draw_area" (ptr t_typ @-> int32_t @-> int32_t @-> int32_t @-> int32_t @-> returning (void))
let queue_draw_region =
  foreign "gtk_widget_queue_draw_region" (ptr t_typ @-> ptr Region.t_typ @-> returning (void))
let queue_resize =
  foreign "gtk_widget_queue_resize" (ptr t_typ @-> returning (void))
let queue_resize_no_redraw =
  foreign "gtk_widget_queue_resize_no_redraw" (ptr t_typ @-> returning (void))
let realize =
  foreign "gtk_widget_realize" (ptr t_typ @-> returning (void))
let region_intersect =
  foreign "gtk_widget_region_intersect" (ptr t_typ @-> ptr Region.t_typ @-> returning (ptr Region.t_typ))
(*Not implemented gtk_widget_register_window type object not implemented*)
(*Not implemented gtk_widget_remove_accelerator type object not implemented*)
(*Not implemented gtk_widget_remove_mnemonic_label type object not implemented*)
let remove_tick_callback =
  foreign "gtk_widget_remove_tick_callback" (ptr t_typ @-> uint32_t @-> returning (void))
(*Not implemented gtk_widget_render_icon return type object not handled*)
(*Not implemented gtk_widget_render_icon_pixbuf return type object not handled*)
(*Not implemented gtk_widget_reparent type object not implemented*)
let reset_rc_styles =
  foreign "gtk_widget_reset_rc_styles" (ptr t_typ @-> returning (void))
let reset_style =
  foreign "gtk_widget_reset_style" (ptr t_typ @-> returning (void))
(*Not implemented gtk_widget_send_expose type union not implemented*)
(*Not implemented gtk_widget_send_focus_change type union not implemented*)
(*Not implemented gtk_widget_set_accel_path type object not implemented*)
let set_allocation =
  foreign "gtk_widget_set_allocation" (ptr t_typ @-> ptr Rectangle.t_typ @-> returning (void))
let set_app_paintable =
  foreign "gtk_widget_set_app_paintable" (ptr t_typ @-> bool @-> returning (void))
let set_can_default =
  foreign "gtk_widget_set_can_default" (ptr t_typ @-> bool @-> returning (void))
let set_can_focus =
  foreign "gtk_widget_set_can_focus" (ptr t_typ @-> bool @-> returning (void))
let set_child_visible =
  foreign "gtk_widget_set_child_visible" (ptr t_typ @-> bool @-> returning (void))
let set_clip =
  foreign "gtk_widget_set_clip" (ptr t_typ @-> ptr Rectangle.t_typ @-> returning (void))
let set_composite_name =
  foreign "gtk_widget_set_composite_name" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_widget_set_device_enabled type object not implemented*)
(*Not implemented gtk_widget_set_device_events type object not implemented*)
let set_direction =
  foreign "gtk_widget_set_direction" (ptr t_typ @-> Text_direction.t_view @-> returning (void))
let set_double_buffered =
  foreign "gtk_widget_set_double_buffered" (ptr t_typ @-> bool @-> returning (void))
let set_events =
  foreign "gtk_widget_set_events" (ptr t_typ @-> int32_t @-> returning (void))
let set_focus_on_click =
  foreign "gtk_widget_set_focus_on_click" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_widget_set_font_map type object not implemented*)
let set_font_options =
  foreign "gtk_widget_set_font_options" (ptr t_typ @-> ptr_opt Font_options.t_typ @-> returning (void))
let set_halign =
  foreign "gtk_widget_set_halign" (ptr t_typ @-> Align.t_view @-> returning (void))
let set_has_tooltip =
  foreign "gtk_widget_set_has_tooltip" (ptr t_typ @-> bool @-> returning (void))
let set_has_window =
  foreign "gtk_widget_set_has_window" (ptr t_typ @-> bool @-> returning (void))
let set_hexpand =
  foreign "gtk_widget_set_hexpand" (ptr t_typ @-> bool @-> returning (void))
let set_hexpand_set =
  foreign "gtk_widget_set_hexpand_set" (ptr t_typ @-> bool @-> returning (void))
let set_mapped =
  foreign "gtk_widget_set_mapped" (ptr t_typ @-> bool @-> returning (void))
let set_margin_bottom =
  foreign "gtk_widget_set_margin_bottom" (ptr t_typ @-> int32_t @-> returning (void))
let set_margin_end =
  foreign "gtk_widget_set_margin_end" (ptr t_typ @-> int32_t @-> returning (void))
let set_margin_left =
  foreign "gtk_widget_set_margin_left" (ptr t_typ @-> int32_t @-> returning (void))
let set_margin_right =
  foreign "gtk_widget_set_margin_right" (ptr t_typ @-> int32_t @-> returning (void))
let set_margin_start =
  foreign "gtk_widget_set_margin_start" (ptr t_typ @-> int32_t @-> returning (void))
let set_margin_top =
  foreign "gtk_widget_set_margin_top" (ptr t_typ @-> int32_t @-> returning (void))
let set_name =
  foreign "gtk_widget_set_name" (ptr t_typ @-> string @-> returning (void))
let set_no_show_all =
  foreign "gtk_widget_set_no_show_all" (ptr t_typ @-> bool @-> returning (void))
let set_opacity =
  foreign "gtk_widget_set_opacity" (ptr t_typ @-> double @-> returning (void))
(*Not implemented gtk_widget_set_parent type object not implemented*)
(*Not implemented gtk_widget_set_parent_window type object not implemented*)
let set_realized =
  foreign "gtk_widget_set_realized" (ptr t_typ @-> bool @-> returning (void))
let set_receives_default =
  foreign "gtk_widget_set_receives_default" (ptr t_typ @-> bool @-> returning (void))
let set_redraw_on_allocate =
  foreign "gtk_widget_set_redraw_on_allocate" (ptr t_typ @-> bool @-> returning (void))
let set_sensitive =
  foreign "gtk_widget_set_sensitive" (ptr t_typ @-> bool @-> returning (void))
let set_size_request =
  foreign "gtk_widget_set_size_request" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_state =
  foreign "gtk_widget_set_state" (ptr t_typ @-> State_type.t_view @-> returning (void))
let set_state_flags =
  foreign "gtk_widget_set_state_flags" (ptr t_typ @-> State_flags.t_list_view @-> bool @-> returning (void))
(*Not implemented gtk_widget_set_style type object not implemented*)
let set_support_multidevice =
  foreign "gtk_widget_set_support_multidevice" (ptr t_typ @-> bool @-> returning (void))
let set_tooltip_markup =
  foreign "gtk_widget_set_tooltip_markup" (ptr t_typ @-> string_opt @-> returning (void))
let set_tooltip_text =
  foreign "gtk_widget_set_tooltip_text" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_widget_set_tooltip_window type object not implemented*)
let set_valign =
  foreign "gtk_widget_set_valign" (ptr t_typ @-> Align.t_view @-> returning (void))
let set_vexpand =
  foreign "gtk_widget_set_vexpand" (ptr t_typ @-> bool @-> returning (void))
let set_vexpand_set =
  foreign "gtk_widget_set_vexpand_set" (ptr t_typ @-> bool @-> returning (void))
let set_visible =
  foreign "gtk_widget_set_visible" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_widget_set_visual type object not implemented*)
(*Not implemented gtk_widget_set_window type object not implemented*)
let shape_combine_region =
  foreign "gtk_widget_shape_combine_region" (ptr t_typ @-> ptr_opt Region.t_typ @-> returning (void))
let show =
  foreign "gtk_widget_show" (ptr t_typ @-> returning (void))
let show_all =
  foreign "gtk_widget_show_all" (ptr t_typ @-> returning (void))
let show_now =
  foreign "gtk_widget_show_now" (ptr t_typ @-> returning (void))
let size_allocate =
  foreign "gtk_widget_size_allocate" (ptr t_typ @-> ptr Rectangle.t_typ @-> returning (void))
let size_allocate_with_baseline =
  foreign "gtk_widget_size_allocate_with_baseline" (ptr t_typ @-> ptr Rectangle.t_typ @-> int32_t @-> returning (void))
let size_request self =
  let requisition_ptr = allocate Requisition.t_typ (make Requisition.t_typ) in
  let size_request_raw =
    foreign "gtk_widget_size_request" (ptr t_typ @-> ptr (Requisition.t_typ) @-> returning void)
  in
  let ret = size_request_raw self requisition_ptr in
  let requisition = !@ requisition_ptr in
  (requisition)
let style_attach =
  foreign "gtk_widget_style_attach" (ptr t_typ @-> returning (void))
let style_get_property =
  foreign "gtk_widget_style_get_property" (ptr t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let thaw_child_notify =
  foreign "gtk_widget_thaw_child_notify" (ptr t_typ @-> returning (void))
(*Not implemented gtk_widget_translate_coordinates type object not implemented*)
let trigger_tooltip_query =
  foreign "gtk_widget_trigger_tooltip_query" (ptr t_typ @-> returning (void))
let unmap =
  foreign "gtk_widget_unmap" (ptr t_typ @-> returning (void))
let unparent =
  foreign "gtk_widget_unparent" (ptr t_typ @-> returning (void))
let unrealize =
  foreign "gtk_widget_unrealize" (ptr t_typ @-> returning (void))
(*Not implemented gtk_widget_unregister_window type object not implemented*)
let unset_state_flags =
  foreign "gtk_widget_unset_state_flags" (ptr t_typ @-> State_flags.t_list_view @-> returning (void))
