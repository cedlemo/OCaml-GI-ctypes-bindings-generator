open Ctypes

type t
val t_typ : t typ

val get_default_direction:
  unit -> Text_direction.t
(*Not implemented gtk_widget_get_default_style return type object not handled*)
val pop_composite_child:
  unit -> unit
val push_composite_child:
  unit -> unit
val set_default_direction:
  Text_direction.t -> unit
val activate:
  t structure ptr -> bool
(*Not implemented gtk_widget_add_accelerator type object not implemented*)
(*Not implemented gtk_widget_add_device_events type object not implemented*)
val add_events:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_widget_add_mnemonic_label type object not implemented*)
(*Not implemented gtk_widget_add_tick_callback type callback not implemented*)
val can_activate_accel:
  t structure ptr -> Unsigned.uint32 -> bool
val child_focus:
  t structure ptr -> Direction_type.t -> bool
val child_notify:
  t structure ptr -> string -> unit
val class_path :
  t structure ptr -> (Unsigned.uint32 * string * string)
val compute_expand:
  t structure ptr -> Orientation.t -> bool
(*Not implemented gtk_widget_create_pango_context return type object not handled*)
(*Not implemented gtk_widget_create_pango_layout return type object not handled*)
val destroy:
  t structure ptr -> unit
(*Not implemented gtk_widget_destroyed type object not implemented*)
(*Not implemented gtk_widget_device_is_shadowed type object not implemented*)
(*Not implemented gtk_drag_begin type union not implemented*)
(*Not implemented gtk_drag_begin_with_coordinates type union not implemented*)
val drag_check_threshold:
  t structure ptr -> int32 -> int32 -> int32 -> int32 -> bool
val drag_dest_add_image_targets:
  t structure ptr -> unit
val drag_dest_add_text_targets:
  t structure ptr -> unit
val drag_dest_add_uri_targets:
  t structure ptr -> unit
(*Not implemented gtk_drag_dest_find_target type object not implemented*)
val drag_dest_get_target_list:
  t structure ptr -> Target_list.t structure ptr option
val drag_dest_get_track_motion:
  t structure ptr -> bool
(*Not implemented gtk_drag_dest_set type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_drag_dest_set_proxy type object not implemented*)
val drag_dest_set_target_list:
  t structure ptr -> Target_list.t structure ptr option -> unit
val drag_dest_set_track_motion:
  t structure ptr -> bool -> unit
val drag_dest_unset:
  t structure ptr -> unit
(*Not implemented gtk_drag_get_data type object not implemented*)
val drag_highlight:
  t structure ptr -> unit
val drag_source_add_image_targets:
  t structure ptr -> unit
val drag_source_add_text_targets:
  t structure ptr -> unit
val drag_source_add_uri_targets:
  t structure ptr -> unit
val drag_source_get_target_list:
  t structure ptr -> Target_list.t structure ptr option
(*Not implemented gtk_drag_source_set type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_drag_source_set_icon_gicon type interface not implemented*)
val drag_source_set_icon_name:
  t structure ptr -> string -> unit
(*Not implemented gtk_drag_source_set_icon_pixbuf type object not implemented*)
val drag_source_set_icon_stock:
  t structure ptr -> string -> unit
val drag_source_set_target_list:
  t structure ptr -> Target_list.t structure ptr option -> unit
val drag_source_unset:
  t structure ptr -> unit
val drag_unhighlight:
  t structure ptr -> unit
val draw:
  t structure ptr -> Context.t structure ptr -> unit
val ensure_style:
  t structure ptr -> unit
val error_bell:
  t structure ptr -> unit
(*Not implemented gtk_widget_event type union not implemented*)
val freeze_child_notify:
  t structure ptr -> unit
(*Not implemented gtk_widget_get_accessible return type object not handled*)
(*Not implemented gtk_widget_get_action_group return type interface not handled*)
val get_allocated_baseline:
  t structure ptr -> int32
val get_allocated_height:
  t structure ptr -> int32
val get_allocated_size :
  t structure ptr -> (Rectangle.t structure * int32)
val get_allocated_width:
  t structure ptr -> int32
val get_allocation :
  t structure ptr -> (Rectangle.t structure)
(*Not implemented gtk_widget_get_ancestor type gType not implemented*)
val get_app_paintable:
  t structure ptr -> bool
val get_can_default:
  t structure ptr -> bool
val get_can_focus:
  t structure ptr -> bool
val get_child_requisition :
  t structure ptr -> (Requisition.t structure)
val get_child_visible:
  t structure ptr -> bool
val get_clip :
  t structure ptr -> (Rectangle.t structure)
(*Not implemented gtk_widget_get_clipboard return type object not handled*)
val get_composite_name:
  t structure ptr -> string option
(*Not implemented gtk_widget_get_device_enabled type object not implemented*)
(*Not implemented gtk_widget_get_device_events type object not implemented*)
val get_direction:
  t structure ptr -> Text_direction.t
(*Not implemented gtk_widget_get_display return type object not handled*)
val get_double_buffered:
  t structure ptr -> bool
val get_events:
  t structure ptr -> int32
val get_focus_on_click:
  t structure ptr -> bool
(*Not implemented gtk_widget_get_font_map return type object not handled*)
val get_font_options:
  t structure ptr -> Font_options.t structure ptr option
(*Not implemented gtk_widget_get_frame_clock return type object not handled*)
val get_halign:
  t structure ptr -> Align.t
val get_has_tooltip:
  t structure ptr -> bool
val get_has_window:
  t structure ptr -> bool
val get_hexpand:
  t structure ptr -> bool
val get_hexpand_set:
  t structure ptr -> bool
val get_mapped:
  t structure ptr -> bool
val get_margin_bottom:
  t structure ptr -> int32
val get_margin_end:
  t structure ptr -> int32
val get_margin_left:
  t structure ptr -> int32
val get_margin_right:
  t structure ptr -> int32
val get_margin_start:
  t structure ptr -> int32
val get_margin_top:
  t structure ptr -> int32
val get_modifier_mask:
  t structure ptr -> Modifier_intent.t -> Modifier_type.t_list
(*Not implemented gtk_widget_get_modifier_style return type object not handled*)
val get_name:
  t structure ptr -> string option
val get_no_show_all:
  t structure ptr -> bool
val get_opacity:
  t structure ptr -> float
(*Not implemented gtk_widget_get_pango_context return type object not handled*)
(*Not implemented gtk_widget_get_parent return type object not handled*)
(*Not implemented gtk_widget_get_parent_window return type object not handled*)
val get_path:
  t structure ptr -> Widget_path.t structure ptr
val get_pointer :
  t structure ptr -> (int32 * int32)
val get_preferred_height :
  t structure ptr -> (int32 * int32)
val get_preferred_height_and_baseline_for_width :
  t structure ptr -> int32 -> (int32 * int32 * int32 * int32)
val get_preferred_height_for_width :
  t structure ptr -> int32 -> (int32 * int32)
val get_preferred_size :
  t structure ptr -> (Requisition.t structure * Requisition.t structure)
val get_preferred_width :
  t structure ptr -> (int32 * int32)
val get_preferred_width_for_height :
  t structure ptr -> int32 -> (int32 * int32)
val get_realized:
  t structure ptr -> bool
val get_receives_default:
  t structure ptr -> bool
val get_request_mode:
  t structure ptr -> Size_request_mode.t
val get_requisition :
  t structure ptr -> (Requisition.t structure)
(*Not implemented gtk_widget_get_root_window return type object not handled*)
val get_scale_factor:
  t structure ptr -> int32
(*Not implemented gtk_widget_get_screen return type object not handled*)
val get_sensitive:
  t structure ptr -> bool
(*Not implemented gtk_widget_get_settings return type object not handled*)
val get_size_request :
  t structure ptr -> (int32 * int32)
val get_state:
  t structure ptr -> State_type.t
val get_state_flags:
  t structure ptr -> State_flags.t_list
(*Not implemented gtk_widget_get_style return type object not handled*)
(*Not implemented gtk_widget_get_style_context return type object not handled*)
val get_support_multidevice:
  t structure ptr -> bool
(*Not implemented gtk_widget_get_template_child type gType not implemented*)
val get_tooltip_markup:
  t structure ptr -> string option
val get_tooltip_text:
  t structure ptr -> string option
(*Not implemented gtk_widget_get_tooltip_window return type object not handled*)
(*Not implemented gtk_widget_get_toplevel return type object not handled*)
val get_valign:
  t structure ptr -> Align.t
val get_valign_with_baseline:
  t structure ptr -> Align.t
val get_vexpand:
  t structure ptr -> bool
val get_vexpand_set:
  t structure ptr -> bool
val get_visible:
  t structure ptr -> bool
(*Not implemented gtk_widget_get_visual return type object not handled*)
(*Not implemented gtk_widget_get_window return type object not handled*)
val grab_add:
  t structure ptr -> unit
val grab_default:
  t structure ptr -> unit
val grab_focus:
  t structure ptr -> unit
val grab_remove:
  t structure ptr -> unit
val has_default:
  t structure ptr -> bool
val has_focus:
  t structure ptr -> bool
val has_grab:
  t structure ptr -> bool
val has_rc_style:
  t structure ptr -> bool
val has_screen:
  t structure ptr -> bool
val has_visible_focus:
  t structure ptr -> bool
val hide:
  t structure ptr -> unit
val hide_on_delete:
  t structure ptr -> bool
val in_destruction:
  t structure ptr -> bool
val init_template:
  t structure ptr -> unit
val input_shape_combine_region:
  t structure ptr -> Region.t structure ptr option -> unit
(*Not implemented gtk_widget_insert_action_group type interface not implemented*)
val intersect :
  t structure ptr -> Rectangle.t structure ptr -> (bool * Rectangle.t structure)
(*Not implemented gtk_widget_is_ancestor type object not implemented*)
val is_composited:
  t structure ptr -> bool
val is_drawable:
  t structure ptr -> bool
val is_focus:
  t structure ptr -> bool
val is_sensitive:
  t structure ptr -> bool
val is_toplevel:
  t structure ptr -> bool
val is_visible:
  t structure ptr -> bool
val keynav_failed:
  t structure ptr -> Direction_type.t -> bool
val list_accel_closures:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_widget_list_action_prefixes return type C Array type for Types.Array tag not handled*)
val list_mnemonic_labels:
  t structure ptr -> List.t structure ptr
val map:
  t structure ptr -> unit
val mnemonic_activate:
  t structure ptr -> bool -> bool
val modify_base:
  t structure ptr -> State_type.t -> Color.t structure ptr option -> unit
val modify_bg:
  t structure ptr -> State_type.t -> Color.t structure ptr option -> unit
val modify_cursor:
  t structure ptr -> Color.t structure ptr option -> Color.t structure ptr option -> unit
val modify_fg:
  t structure ptr -> State_type.t -> Color.t structure ptr option -> unit
val modify_font:
  t structure ptr -> Font_description.t structure ptr option -> unit
(*Not implemented gtk_widget_modify_style type object not implemented*)
val modify_text:
  t structure ptr -> State_type.t -> Color.t structure ptr option -> unit
val override_background_color:
  t structure ptr -> State_flags.t_list -> RGBA.t structure ptr option -> unit
val override_color:
  t structure ptr -> State_flags.t_list -> RGBA.t structure ptr option -> unit
val override_cursor:
  t structure ptr -> RGBA.t structure ptr option -> RGBA.t structure ptr option -> unit
val override_font:
  t structure ptr -> Font_description.t structure ptr option -> unit
val override_symbolic_color:
  t structure ptr -> string -> RGBA.t structure ptr option -> unit
val path :
  t structure ptr -> (Unsigned.uint32 * string * string)
val queue_allocate:
  t structure ptr -> unit
val queue_compute_expand:
  t structure ptr -> unit
val queue_draw:
  t structure ptr -> unit
val queue_draw_area:
  t structure ptr -> int32 -> int32 -> int32 -> int32 -> unit
val queue_draw_region:
  t structure ptr -> Region.t structure ptr -> unit
val queue_resize:
  t structure ptr -> unit
val queue_resize_no_redraw:
  t structure ptr -> unit
val realize:
  t structure ptr -> unit
val region_intersect:
  t structure ptr -> Region.t structure ptr -> Region.t structure ptr
(*Not implemented gtk_widget_register_window type object not implemented*)
(*Not implemented gtk_widget_remove_accelerator type object not implemented*)
(*Not implemented gtk_widget_remove_mnemonic_label type object not implemented*)
val remove_tick_callback:
  t structure ptr -> Unsigned.uint32 -> unit
(*Not implemented gtk_widget_render_icon return type object not handled*)
(*Not implemented gtk_widget_render_icon_pixbuf return type object not handled*)
(*Not implemented gtk_widget_reparent type object not implemented*)
val reset_rc_styles:
  t structure ptr -> unit
val reset_style:
  t structure ptr -> unit
(*Not implemented gtk_widget_send_expose type union not implemented*)
(*Not implemented gtk_widget_send_focus_change type union not implemented*)
(*Not implemented gtk_widget_set_accel_path type object not implemented*)
val set_allocation:
  t structure ptr -> Rectangle.t structure ptr -> unit
val set_app_paintable:
  t structure ptr -> bool -> unit
val set_can_default:
  t structure ptr -> bool -> unit
val set_can_focus:
  t structure ptr -> bool -> unit
val set_child_visible:
  t structure ptr -> bool -> unit
val set_clip:
  t structure ptr -> Rectangle.t structure ptr -> unit
val set_composite_name:
  t structure ptr -> string -> unit
(*Not implemented gtk_widget_set_device_enabled type object not implemented*)
(*Not implemented gtk_widget_set_device_events type object not implemented*)
val set_direction:
  t structure ptr -> Text_direction.t -> unit
val set_double_buffered:
  t structure ptr -> bool -> unit
val set_events:
  t structure ptr -> int32 -> unit
val set_focus_on_click:
  t structure ptr -> bool -> unit
(*Not implemented gtk_widget_set_font_map type object not implemented*)
val set_font_options:
  t structure ptr -> Font_options.t structure ptr option -> unit
val set_halign:
  t structure ptr -> Align.t -> unit
val set_has_tooltip:
  t structure ptr -> bool -> unit
val set_has_window:
  t structure ptr -> bool -> unit
val set_hexpand:
  t structure ptr -> bool -> unit
val set_hexpand_set:
  t structure ptr -> bool -> unit
val set_mapped:
  t structure ptr -> bool -> unit
val set_margin_bottom:
  t structure ptr -> int32 -> unit
val set_margin_end:
  t structure ptr -> int32 -> unit
val set_margin_left:
  t structure ptr -> int32 -> unit
val set_margin_right:
  t structure ptr -> int32 -> unit
val set_margin_start:
  t structure ptr -> int32 -> unit
val set_margin_top:
  t structure ptr -> int32 -> unit
val set_name:
  t structure ptr -> string -> unit
val set_no_show_all:
  t structure ptr -> bool -> unit
val set_opacity:
  t structure ptr -> float -> unit
(*Not implemented gtk_widget_set_parent type object not implemented*)
(*Not implemented gtk_widget_set_parent_window type object not implemented*)
val set_realized:
  t structure ptr -> bool -> unit
val set_receives_default:
  t structure ptr -> bool -> unit
val set_redraw_on_allocate:
  t structure ptr -> bool -> unit
val set_sensitive:
  t structure ptr -> bool -> unit
val set_size_request:
  t structure ptr -> int32 -> int32 -> unit
val set_state:
  t structure ptr -> State_type.t -> unit
val set_state_flags:
  t structure ptr -> State_flags.t_list -> bool -> unit
(*Not implemented gtk_widget_set_style type object not implemented*)
val set_support_multidevice:
  t structure ptr -> bool -> unit
val set_tooltip_markup:
  t structure ptr -> string option -> unit
val set_tooltip_text:
  t structure ptr -> string option -> unit
(*Not implemented gtk_widget_set_tooltip_window type object not implemented*)
val set_valign:
  t structure ptr -> Align.t -> unit
val set_vexpand:
  t structure ptr -> bool -> unit
val set_vexpand_set:
  t structure ptr -> bool -> unit
val set_visible:
  t structure ptr -> bool -> unit
(*Not implemented gtk_widget_set_visual type object not implemented*)
(*Not implemented gtk_widget_set_window type object not implemented*)
val shape_combine_region:
  t structure ptr -> Region.t structure ptr option -> unit
val show:
  t structure ptr -> unit
val show_all:
  t structure ptr -> unit
val show_now:
  t structure ptr -> unit
val size_allocate:
  t structure ptr -> Rectangle.t structure ptr -> unit
val size_allocate_with_baseline:
  t structure ptr -> Rectangle.t structure ptr -> int32 -> unit
val size_request :
  t structure ptr -> (Requisition.t structure)
val style_attach:
  t structure ptr -> unit
val style_get_property:
  t structure ptr -> string -> Value.t structure ptr -> unit
val thaw_child_notify:
  t structure ptr -> unit
(*Not implemented gtk_widget_translate_coordinates type object not implemented*)
val trigger_tooltip_query:
  t structure ptr -> unit
val unmap:
  t structure ptr -> unit
val unparent:
  t structure ptr -> unit
val unrealize:
  t structure ptr -> unit
(*Not implemented gtk_widget_unregister_window type object not implemented*)
val unset_state_flags:
  t structure ptr -> State_flags.t_list -> unit
