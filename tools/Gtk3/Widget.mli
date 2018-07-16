open Ctypes

type t
val t_typ : t typ

val get_default_direction :
  unit -> Text_direction.t
val get_default_style :
  unit -> Style.t
val pop_composite_child :
  unit -> unit
val push_composite_child :
  unit -> unit
val set_default_direction :
  Text_direction.t -> unit
val activate :
  t -> bool
val add_accelerator :
  t -> string -> Accel_group.t -> Unsigned.uint32 -> Modifier_type.t_list -> Accel_flags.t_list -> unit
val add_device_events :
  t -> Device.t -> Event_mask.t_list -> unit
val add_events :
  t -> int32 -> unit
val add_mnemonic_label :
  t -> t -> unit
(*Not implemented gtk_widget_add_tick_callback type callback not implemented*)
val can_activate_accel :
  t -> Unsigned.uint32 -> bool
val child_focus :
  t -> Direction_type.t -> bool
val child_notify :
  t -> string -> unit
val class_path :
  t -> (Unsigned.uint32 * string * string)
val compute_expand :
  t -> Orientation.t -> bool
val create_pango_context :
  t -> Context.t
val create_pango_layout :
  t -> string option -> Layout.t
val destroy :
  t -> unit
val destroyed :
  t -> t -> (t)
val device_is_shadowed :
  t -> Device.t -> bool
(*Not implemented gtk_drag_begin type union not implemented*)
(*Not implemented gtk_drag_begin_with_coordinates type union not implemented*)
val drag_check_threshold :
  t -> int32 -> int32 -> int32 -> int32 -> bool
val drag_dest_add_image_targets :
  t -> unit
val drag_dest_add_text_targets :
  t -> unit
val drag_dest_add_uri_targets :
  t -> unit
val drag_dest_find_target :
  t -> Drag_context.t -> Target_list.t structure ptr option -> Atom.t structure ptr
val drag_dest_get_target_list :
  t -> Target_list.t structure ptr option
val drag_dest_get_track_motion :
  t -> bool
(*Not implemented gtk_drag_dest_set type C Array type for Types.Array tag not implemented*)
val drag_dest_set_proxy :
  t -> Window.t -> Drag_protocol.t -> bool -> unit
val drag_dest_set_target_list :
  t -> Target_list.t structure ptr option -> unit
val drag_dest_set_track_motion :
  t -> bool -> unit
val drag_dest_unset :
  t -> unit
val drag_get_data :
  t -> Drag_context.t -> Atom.t structure ptr -> Unsigned.uint32 -> unit
val drag_highlight :
  t -> unit
val drag_source_add_image_targets :
  t -> unit
val drag_source_add_text_targets :
  t -> unit
val drag_source_add_uri_targets :
  t -> unit
val drag_source_get_target_list :
  t -> Target_list.t structure ptr option
(*Not implemented gtk_drag_source_set type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_drag_source_set_icon_gicon type interface not implemented*)
val drag_source_set_icon_name :
  t -> string -> unit
val drag_source_set_icon_pixbuf :
  t -> Pixbuf.t -> unit
val drag_source_set_icon_stock :
  t -> string -> unit
val drag_source_set_target_list :
  t -> Target_list.t structure ptr option -> unit
val drag_source_unset :
  t -> unit
val drag_unhighlight :
  t -> unit
val draw :
  t -> Context.t structure ptr -> unit
val ensure_style :
  t -> unit
val error_bell :
  t -> unit
(*Not implemented gtk_widget_event type union not implemented*)
val freeze_child_notify :
  t -> unit
val get_accessible :
  t -> Object.t
(*Not implemented gtk_widget_get_action_group return type interface not handled*)
val get_allocated_baseline :
  t -> int32
val get_allocated_height :
  t -> int32
val get_allocated_size :
  t -> (Rectangle.t structure * int32)
val get_allocated_width :
  t -> int32
val get_allocation :
  t -> (Rectangle.t structure)
(*Not implemented gtk_widget_get_ancestor type gType not implemented*)
val get_app_paintable :
  t -> bool
val get_can_default :
  t -> bool
val get_can_focus :
  t -> bool
val get_child_requisition :
  t -> (Requisition.t structure)
val get_child_visible :
  t -> bool
val get_clip :
  t -> (Rectangle.t structure)
val get_clipboard :
  t -> Atom.t structure ptr -> Clipboard.t
val get_composite_name :
  t -> string option
val get_device_enabled :
  t -> Device.t -> bool
val get_device_events :
  t -> Device.t -> Event_mask.t_list
val get_direction :
  t -> Text_direction.t
val get_display :
  t -> Display.t
val get_double_buffered :
  t -> bool
val get_events :
  t -> int32
val get_focus_on_click :
  t -> bool
val get_font_map :
  t -> Font_map.t
val get_font_options :
  t -> Font_options.t structure ptr option
val get_frame_clock :
  t -> Frame_clock.t
val get_halign :
  t -> Align.t
val get_has_tooltip :
  t -> bool
val get_has_window :
  t -> bool
val get_hexpand :
  t -> bool
val get_hexpand_set :
  t -> bool
val get_mapped :
  t -> bool
val get_margin_bottom :
  t -> int32
val get_margin_end :
  t -> int32
val get_margin_left :
  t -> int32
val get_margin_right :
  t -> int32
val get_margin_start :
  t -> int32
val get_margin_top :
  t -> int32
val get_modifier_mask :
  t -> Modifier_intent.t -> Modifier_type.t_list
val get_modifier_style :
  t -> Rc_style.t
val get_name :
  t -> string option
val get_no_show_all :
  t -> bool
val get_opacity :
  t -> float
val get_pango_context :
  t -> Context.t
val get_parent :
  t -> t
val get_parent_window :
  t -> Window.t
val get_path :
  t -> Widget_path.t structure ptr
val get_pointer :
  t -> (int32 * int32)
val get_preferred_height :
  t -> (int32 * int32)
val get_preferred_height_and_baseline_for_width :
  t -> int32 -> (int32 * int32 * int32 * int32)
val get_preferred_height_for_width :
  t -> int32 -> (int32 * int32)
val get_preferred_size :
  t -> (Requisition.t structure * Requisition.t structure)
val get_preferred_width :
  t -> (int32 * int32)
val get_preferred_width_for_height :
  t -> int32 -> (int32 * int32)
val get_realized :
  t -> bool
val get_receives_default :
  t -> bool
val get_request_mode :
  t -> Size_request_mode.t
val get_requisition :
  t -> (Requisition.t structure)
val get_root_window :
  t -> Window.t
val get_scale_factor :
  t -> int32
val get_screen :
  t -> Screen.t
val get_sensitive :
  t -> bool
val get_settings :
  t -> Settings.t
val get_size_request :
  t -> (int32 * int32)
val get_state :
  t -> State_type.t
val get_state_flags :
  t -> State_flags.t_list
val get_style :
  t -> Style.t
val get_style_context :
  t -> Style_context.t
val get_support_multidevice :
  t -> bool
(*Not implemented gtk_widget_get_template_child type gType not implemented*)
val get_tooltip_markup :
  t -> string option
val get_tooltip_text :
  t -> string option
val get_tooltip_window :
  t -> Window.t
val get_toplevel :
  t -> t
val get_valign :
  t -> Align.t
val get_valign_with_baseline :
  t -> Align.t
val get_vexpand :
  t -> bool
val get_vexpand_set :
  t -> bool
val get_visible :
  t -> bool
val get_visual :
  t -> Visual.t
val get_window :
  t -> Window.t
val grab_add :
  t -> unit
val grab_default :
  t -> unit
val grab_focus :
  t -> unit
val grab_remove :
  t -> unit
val has_default :
  t -> bool
val has_focus :
  t -> bool
val has_grab :
  t -> bool
val has_rc_style :
  t -> bool
val has_screen :
  t -> bool
val has_visible_focus :
  t -> bool
val hide :
  t -> unit
val hide_on_delete :
  t -> bool
val in_destruction :
  t -> bool
val init_template :
  t -> unit
val input_shape_combine_region :
  t -> Region.t structure ptr option -> unit
(*Not implemented gtk_widget_insert_action_group type interface not implemented*)
val intersect :
  t -> Rectangle.t structure ptr -> (bool * Rectangle.t structure)
val is_ancestor :
  t -> t -> bool
val is_composited :
  t -> bool
val is_drawable :
  t -> bool
val is_focus :
  t -> bool
val is_sensitive :
  t -> bool
val is_toplevel :
  t -> bool
val is_visible :
  t -> bool
val keynav_failed :
  t -> Direction_type.t -> bool
val list_accel_closures :
  t -> List.t structure (* Closure.t structure *) ptr
(*Not implemented gtk_widget_list_action_prefixes return type C Array type for Types.Array tag not handled*)
val list_mnemonic_labels :
  t -> List.t structure (* t *) ptr
val map :
  t -> unit
val mnemonic_activate :
  t -> bool -> bool
val modify_base :
  t -> State_type.t -> Color.t structure ptr option -> unit
val modify_bg :
  t -> State_type.t -> Color.t structure ptr option -> unit
val modify_cursor :
  t -> Color.t structure ptr option -> Color.t structure ptr option -> unit
val modify_fg :
  t -> State_type.t -> Color.t structure ptr option -> unit
val modify_font :
  t -> Font_description.t structure ptr option -> unit
val modify_style :
  t -> Rc_style.t -> unit
val modify_text :
  t -> State_type.t -> Color.t structure ptr option -> unit
val override_background_color :
  t -> State_flags.t_list -> RGBA.t structure ptr option -> unit
val override_color :
  t -> State_flags.t_list -> RGBA.t structure ptr option -> unit
val override_cursor :
  t -> RGBA.t structure ptr option -> RGBA.t structure ptr option -> unit
val override_font :
  t -> Font_description.t structure ptr option -> unit
val override_symbolic_color :
  t -> string -> RGBA.t structure ptr option -> unit
val path :
  t -> (Unsigned.uint32 * string * string)
val queue_allocate :
  t -> unit
val queue_compute_expand :
  t -> unit
val queue_draw :
  t -> unit
val queue_draw_area :
  t -> int32 -> int32 -> int32 -> int32 -> unit
val queue_draw_region :
  t -> Region.t structure ptr -> unit
val queue_resize :
  t -> unit
val queue_resize_no_redraw :
  t -> unit
val realize :
  t -> unit
val region_intersect :
  t -> Region.t structure ptr -> Region.t structure ptr
val register_window :
  t -> Window.t -> unit
val remove_accelerator :
  t -> Accel_group.t -> Unsigned.uint32 -> Modifier_type.t_list -> bool
val remove_mnemonic_label :
  t -> t -> unit
val remove_tick_callback :
  t -> Unsigned.uint32 -> unit
val render_icon :
  t -> string -> int32 -> string option -> Pixbuf.t
val render_icon_pixbuf :
  t -> string -> int32 -> Pixbuf.t
val reparent :
  t -> t -> unit
val reset_rc_styles :
  t -> unit
val reset_style :
  t -> unit
(*Not implemented gtk_widget_send_expose type union not implemented*)
(*Not implemented gtk_widget_send_focus_change type union not implemented*)
val set_accel_path :
  t -> string option -> Accel_group.t -> unit
val set_allocation :
  t -> Rectangle.t structure ptr -> unit
val set_app_paintable :
  t -> bool -> unit
val set_can_default :
  t -> bool -> unit
val set_can_focus :
  t -> bool -> unit
val set_child_visible :
  t -> bool -> unit
val set_clip :
  t -> Rectangle.t structure ptr -> unit
val set_composite_name :
  t -> string -> unit
val set_device_enabled :
  t -> Device.t -> bool -> unit
val set_device_events :
  t -> Device.t -> Event_mask.t_list -> unit
val set_direction :
  t -> Text_direction.t -> unit
val set_double_buffered :
  t -> bool -> unit
val set_events :
  t -> int32 -> unit
val set_focus_on_click :
  t -> bool -> unit
val set_font_map :
  t -> Font_map.t -> unit
val set_font_options :
  t -> Font_options.t structure ptr option -> unit
val set_halign :
  t -> Align.t -> unit
val set_has_tooltip :
  t -> bool -> unit
val set_has_window :
  t -> bool -> unit
val set_hexpand :
  t -> bool -> unit
val set_hexpand_set :
  t -> bool -> unit
val set_mapped :
  t -> bool -> unit
val set_margin_bottom :
  t -> int32 -> unit
val set_margin_end :
  t -> int32 -> unit
val set_margin_left :
  t -> int32 -> unit
val set_margin_right :
  t -> int32 -> unit
val set_margin_start :
  t -> int32 -> unit
val set_margin_top :
  t -> int32 -> unit
val set_name :
  t -> string -> unit
val set_no_show_all :
  t -> bool -> unit
val set_opacity :
  t -> float -> unit
val set_parent :
  t -> t -> unit
val set_parent_window :
  t -> Window.t -> unit
val set_realized :
  t -> bool -> unit
val set_receives_default :
  t -> bool -> unit
val set_redraw_on_allocate :
  t -> bool -> unit
val set_sensitive :
  t -> bool -> unit
val set_size_request :
  t -> int32 -> int32 -> unit
val set_state :
  t -> State_type.t -> unit
val set_state_flags :
  t -> State_flags.t_list -> bool -> unit
val set_style :
  t -> Style.t -> unit
val set_support_multidevice :
  t -> bool -> unit
val set_tooltip_markup :
  t -> string option -> unit
val set_tooltip_text :
  t -> string option -> unit
val set_tooltip_window :
  t -> Window.t -> unit
val set_valign :
  t -> Align.t -> unit
val set_vexpand :
  t -> bool -> unit
val set_vexpand_set :
  t -> bool -> unit
val set_visible :
  t -> bool -> unit
val set_visual :
  t -> Visual.t -> unit
val set_window :
  t -> Window.t -> unit
val shape_combine_region :
  t -> Region.t structure ptr option -> unit
val show :
  t -> unit
val show_all :
  t -> unit
val show_now :
  t -> unit
val size_allocate :
  t -> Rectangle.t structure ptr -> unit
val size_allocate_with_baseline :
  t -> Rectangle.t structure ptr -> int32 -> unit
val size_request :
  t -> (Requisition.t structure)
val style_attach :
  t -> unit
val style_get_property :
  t -> string -> Value.t structure ptr -> unit
val thaw_child_notify :
  t -> unit
val translate_coordinates :
  t -> t -> int32 -> int32 -> (bool * int32 * int32)
val trigger_tooltip_query :
  t -> unit
val unmap :
  t -> unit
val unparent :
  t -> unit
val unrealize :
  t -> unit
val unregister_window :
  t -> Window.t -> unit
val unset_state_flags :
  t -> State_flags.t_list -> unit
