open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_window_new return type object not handled*)
val get_default_icon_list:
  unit -> List.t structure ptr
val get_default_icon_name:
  unit -> string option
val list_toplevels:
  unit -> List.t structure ptr
val set_auto_startup_notification:
  bool -> unit
(*Not implemented gtk_window_set_default_icon type object not implemented*)
val set_default_icon_from_file:
  string -> (bool, Error.t structure ptr option) result
val set_default_icon_list:
  List.t structure ptr -> unit
val set_default_icon_name:
  string -> unit
val set_interactive_debugging:
  bool -> unit
val activate_default:
  t structure ptr -> bool
val activate_focus:
  t structure ptr -> bool
val activate_key:
  t structure ptr -> Event_key.t structure ptr -> bool
(*Not implemented gtk_window_add_accel_group type object not implemented*)
(*Not implemented gtk_window_add_mnemonic type object not implemented*)
val begin_move_drag:
  t structure ptr -> int32 -> int32 -> int32 -> Unsigned.uint32 -> unit
val begin_resize_drag:
  t structure ptr -> Window_edge.t -> int32 -> int32 -> int32 -> Unsigned.uint32 -> unit
val close:
  t structure ptr -> unit
val deiconify:
  t structure ptr -> unit
val fullscreen:
  t structure ptr -> unit
(*Not implemented gtk_window_fullscreen_on_monitor type object not implemented*)
val get_accept_focus:
  t structure ptr -> bool
(*Not implemented gtk_window_get_application return type object not handled*)
(*Not implemented gtk_window_get_attached_to return type object not handled*)
val get_decorated:
  t structure ptr -> bool
val get_default_size :
  t structure ptr -> (int32 * int32)
(*Not implemented gtk_window_get_default_widget return type object not handled*)
val get_deletable:
  t structure ptr -> bool
val get_destroy_with_parent:
  t structure ptr -> bool
(*Not implemented gtk_window_get_focus return type object not handled*)
val get_focus_on_map:
  t structure ptr -> bool
val get_focus_visible:
  t structure ptr -> bool
val get_gravity:
  t structure ptr -> Gravity.t
(*Not implemented gtk_window_get_group return type object not handled*)
val get_has_resize_grip:
  t structure ptr -> bool
val get_hide_titlebar_when_maximized:
  t structure ptr -> bool
(*Not implemented gtk_window_get_icon return type object not handled*)
val get_icon_list:
  t structure ptr -> List.t structure ptr
val get_icon_name:
  t structure ptr -> string option
val get_mnemonic_modifier:
  t structure ptr -> Modifier_type.t_list
val get_mnemonics_visible:
  t structure ptr -> bool
val get_modal:
  t structure ptr -> bool
val get_opacity:
  t structure ptr -> float
val get_position :
  t structure ptr -> (int32 * int32)
val get_resizable:
  t structure ptr -> bool
val get_resize_grip_area :
  t structure ptr -> (bool * Rectangle.t structure)
val get_role:
  t structure ptr -> string option
(*Not implemented gtk_window_get_screen return type object not handled*)
val get_size :
  t structure ptr -> (int32 * int32)
val get_skip_pager_hint:
  t structure ptr -> bool
val get_skip_taskbar_hint:
  t structure ptr -> bool
val get_title:
  t structure ptr -> string option
(*Not implemented gtk_window_get_titlebar return type object not handled*)
(*Not implemented gtk_window_get_transient_for return type object not handled*)
val get_type_hint:
  t structure ptr -> Window_type_hint.t
val get_urgency_hint:
  t structure ptr -> bool
val get_window_type:
  t structure ptr -> Window_type.t
val has_group:
  t structure ptr -> bool
val has_toplevel_focus:
  t structure ptr -> bool
val iconify:
  t structure ptr -> unit
val is_active:
  t structure ptr -> bool
val is_maximized:
  t structure ptr -> bool
val maximize:
  t structure ptr -> unit
val mnemonic_activate:
  t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> bool
val move:
  t structure ptr -> int32 -> int32 -> unit
val parse_geometry:
  t structure ptr -> string -> bool
val present:
  t structure ptr -> unit
val present_with_time:
  t structure ptr -> Unsigned.uint32 -> unit
val propagate_key_event:
  t structure ptr -> Event_key.t structure ptr -> bool
(*Not implemented gtk_window_remove_accel_group type object not implemented*)
(*Not implemented gtk_window_remove_mnemonic type object not implemented*)
val reshow_with_initial_size:
  t structure ptr -> unit
val resize:
  t structure ptr -> int32 -> int32 -> unit
val resize_grip_is_visible:
  t structure ptr -> bool
val resize_to_geometry:
  t structure ptr -> int32 -> int32 -> unit
val set_accept_focus:
  t structure ptr -> bool -> unit
(*Not implemented gtk_window_set_application type object not implemented*)
(*Not implemented gtk_window_set_attached_to type object not implemented*)
val set_decorated:
  t structure ptr -> bool -> unit
(*Not implemented gtk_window_set_default type object not implemented*)
val set_default_geometry:
  t structure ptr -> int32 -> int32 -> unit
val set_default_size:
  t structure ptr -> int32 -> int32 -> unit
val set_deletable:
  t structure ptr -> bool -> unit
val set_destroy_with_parent:
  t structure ptr -> bool -> unit
(*Not implemented gtk_window_set_focus type object not implemented*)
val set_focus_on_map:
  t structure ptr -> bool -> unit
val set_focus_visible:
  t structure ptr -> bool -> unit
(*Not implemented gtk_window_set_geometry_hints type object not implemented*)
val set_gravity:
  t structure ptr -> Gravity.t -> unit
val set_has_resize_grip:
  t structure ptr -> bool -> unit
val set_has_user_ref_count:
  t structure ptr -> bool -> unit
val set_hide_titlebar_when_maximized:
  t structure ptr -> bool -> unit
(*Not implemented gtk_window_set_icon type object not implemented*)
val set_icon_from_file:
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val set_icon_list:
  t structure ptr -> List.t structure ptr -> unit
val set_icon_name:
  t structure ptr -> string option -> unit
val set_keep_above:
  t structure ptr -> bool -> unit
val set_keep_below:
  t structure ptr -> bool -> unit
val set_mnemonic_modifier:
  t structure ptr -> Modifier_type.t_list -> unit
val set_mnemonics_visible:
  t structure ptr -> bool -> unit
val set_modal:
  t structure ptr -> bool -> unit
val set_opacity:
  t structure ptr -> float -> unit
val set_position:
  t structure ptr -> Window_position.t -> unit
val set_resizable:
  t structure ptr -> bool -> unit
val set_role:
  t structure ptr -> string -> unit
(*Not implemented gtk_window_set_screen type object not implemented*)
val set_skip_pager_hint:
  t structure ptr -> bool -> unit
val set_skip_taskbar_hint:
  t structure ptr -> bool -> unit
val set_startup_id:
  t structure ptr -> string -> unit
val set_title:
  t structure ptr -> string -> unit
(*Not implemented gtk_window_set_titlebar type object not implemented*)
(*Not implemented gtk_window_set_transient_for type object not implemented*)
val set_type_hint:
  t structure ptr -> Window_type_hint.t -> unit
val set_urgency_hint:
  t structure ptr -> bool -> unit
val set_wmclass:
  t structure ptr -> string -> string -> unit
val stick:
  t structure ptr -> unit
val unfullscreen:
  t structure ptr -> unit
val unmaximize:
  t structure ptr -> unit
val unstick:
  t structure ptr -> unit
