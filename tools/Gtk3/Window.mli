open Ctypes

type t
val t_typ : t typ

val create :
  Window_type.t -> Widget.t
val get_default_icon_list :
  unit -> List.t structure (* Pixbuf.t *) ptr
val get_default_icon_name :
  unit -> string option
val list_toplevels :
  unit -> List.t structure (* Widget.t *) ptr
val set_auto_startup_notification :
  bool -> unit
val set_default_icon :
  Pixbuf.t -> unit
val set_default_icon_from_file :
  string -> (bool, Error.t structure ptr option) result
val set_default_icon_list :
  List.t structure (* Pixbuf.t *) ptr -> unit
val set_default_icon_name :
  string -> unit
val set_interactive_debugging :
  bool -> unit
val activate_default :
  t -> bool
val activate_focus :
  t -> bool
val activate_key :
  t -> Event_key.t structure ptr -> bool
val add_accel_group :
  t -> Accel_group.t -> unit
val add_mnemonic :
  t -> Unsigned.uint32 -> Widget.t -> unit
val begin_move_drag :
  t -> int32 -> int32 -> int32 -> Unsigned.uint32 -> unit
val begin_resize_drag :
  t -> Window_edge.t -> int32 -> int32 -> int32 -> Unsigned.uint32 -> unit
val close :
  t -> unit
val deiconify :
  t -> unit
val fullscreen :
  t -> unit
val fullscreen_on_monitor :
  t -> Screen.t -> int32 -> unit
val get_accept_focus :
  t -> bool
val get_application :
  t -> Application.t
val get_attached_to :
  t -> Widget.t
val get_decorated :
  t -> bool
val get_default_size :
  t -> (int32 * int32)
val get_default_widget :
  t -> Widget.t
val get_deletable :
  t -> bool
val get_destroy_with_parent :
  t -> bool
val get_focus :
  t -> Widget.t
val get_focus_on_map :
  t -> bool
val get_focus_visible :
  t -> bool
val get_gravity :
  t -> Gravity.t
val get_group :
  t -> Window_group.t
val get_has_resize_grip :
  t -> bool
val get_hide_titlebar_when_maximized :
  t -> bool
val get_icon :
  t -> Pixbuf.t
val get_icon_list :
  t -> List.t structure (* Pixbuf.t *) ptr
val get_icon_name :
  t -> string option
val get_mnemonic_modifier :
  t -> Modifier_type.t_list
val get_mnemonics_visible :
  t -> bool
val get_modal :
  t -> bool
val get_opacity :
  t -> float
val get_position :
  t -> (int32 * int32)
val get_resizable :
  t -> bool
val get_resize_grip_area :
  t -> (bool * Rectangle.t structure)
val get_role :
  t -> string option
val get_screen :
  t -> Screen.t
val get_size :
  t -> (int32 * int32)
val get_skip_pager_hint :
  t -> bool
val get_skip_taskbar_hint :
  t -> bool
val get_title :
  t -> string option
val get_titlebar :
  t -> Widget.t
val get_transient_for :
  t -> t
val get_type_hint :
  t -> Window_type_hint.t
val get_urgency_hint :
  t -> bool
val get_window_type :
  t -> Window_type.t
val has_group :
  t -> bool
val has_toplevel_focus :
  t -> bool
val iconify :
  t -> unit
val is_active :
  t -> bool
val is_maximized :
  t -> bool
val maximize :
  t -> unit
val mnemonic_activate :
  t -> Unsigned.uint32 -> Modifier_type.t_list -> bool
val move :
  t -> int32 -> int32 -> unit
val parse_geometry :
  t -> string -> bool
val present :
  t -> unit
val present_with_time :
  t -> Unsigned.uint32 -> unit
val propagate_key_event :
  t -> Event_key.t structure ptr -> bool
val remove_accel_group :
  t -> Accel_group.t -> unit
val remove_mnemonic :
  t -> Unsigned.uint32 -> Widget.t -> unit
val reshow_with_initial_size :
  t -> unit
val resize :
  t -> int32 -> int32 -> unit
val resize_grip_is_visible :
  t -> bool
val resize_to_geometry :
  t -> int32 -> int32 -> unit
val set_accept_focus :
  t -> bool -> unit
val set_application :
  t -> Application.t -> unit
val set_attached_to :
  t -> Widget.t -> unit
val set_decorated :
  t -> bool -> unit
val set_default :
  t -> Widget.t -> unit
val set_default_geometry :
  t -> int32 -> int32 -> unit
val set_default_size :
  t -> int32 -> int32 -> unit
val set_deletable :
  t -> bool -> unit
val set_destroy_with_parent :
  t -> bool -> unit
val set_focus :
  t -> Widget.t -> unit
val set_focus_on_map :
  t -> bool -> unit
val set_focus_visible :
  t -> bool -> unit
val set_geometry_hints :
  t -> Widget.t -> Geometry.t structure ptr option -> Window_hints.t_list -> unit
val set_gravity :
  t -> Gravity.t -> unit
val set_has_resize_grip :
  t -> bool -> unit
val set_has_user_ref_count :
  t -> bool -> unit
val set_hide_titlebar_when_maximized :
  t -> bool -> unit
val set_icon :
  t -> Pixbuf.t -> unit
val set_icon_from_file :
  t -> string -> (bool, Error.t structure ptr option) result
val set_icon_list :
  t -> List.t structure (* Pixbuf.t *) ptr -> unit
val set_icon_name :
  t -> string option -> unit
val set_keep_above :
  t -> bool -> unit
val set_keep_below :
  t -> bool -> unit
val set_mnemonic_modifier :
  t -> Modifier_type.t_list -> unit
val set_mnemonics_visible :
  t -> bool -> unit
val set_modal :
  t -> bool -> unit
val set_opacity :
  t -> float -> unit
val set_position :
  t -> Window_position.t -> unit
val set_resizable :
  t -> bool -> unit
val set_role :
  t -> string -> unit
val set_screen :
  t -> Screen.t -> unit
val set_skip_pager_hint :
  t -> bool -> unit
val set_skip_taskbar_hint :
  t -> bool -> unit
val set_startup_id :
  t -> string -> unit
val set_title :
  t -> string -> unit
val set_titlebar :
  t -> Widget.t -> unit
val set_transient_for :
  t -> t -> unit
val set_type_hint :
  t -> Window_type_hint.t -> unit
val set_urgency_hint :
  t -> bool -> unit
val set_wmclass :
  t -> string -> string -> unit
val stick :
  t -> unit
val unfullscreen :
  t -> unit
val unmaximize :
  t -> unit
val unstick :
  t -> unit
