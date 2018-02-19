open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_window_new return type object not handled*)
let get_default_icon_list =
  foreign "gtk_window_get_default_icon_list" (void @-> returning (ptr List.t_typ))
let get_default_icon_name =
  foreign "gtk_window_get_default_icon_name" (void @-> returning (string_opt))
let list_toplevels =
  foreign "gtk_window_list_toplevels" (void @-> returning (ptr List.t_typ))
let set_auto_startup_notification =
  foreign "gtk_window_set_auto_startup_notification" (bool @-> returning (void))
(*Not implemented gtk_window_set_default_icon type object not implemented*)
let set_default_icon_from_file filename =
  let set_default_icon_from_file_raw =
    foreign "gtk_window_set_default_icon_from_file" (string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = set_default_icon_from_file_raw filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_default_icon_list =
  foreign "gtk_window_set_default_icon_list" (ptr List.t_typ @-> returning (void))
let set_default_icon_name =
  foreign "gtk_window_set_default_icon_name" (string @-> returning (void))
let set_interactive_debugging =
  foreign "gtk_window_set_interactive_debugging" (bool @-> returning (void))
let activate_default =
  foreign "gtk_window_activate_default" (ptr t_typ @-> returning (bool))
let activate_focus =
  foreign "gtk_window_activate_focus" (ptr t_typ @-> returning (bool))
let activate_key =
  foreign "gtk_window_activate_key" (ptr t_typ @-> ptr Event_key.t_typ @-> returning (bool))
(*Not implemented gtk_window_add_accel_group type object not implemented*)
(*Not implemented gtk_window_add_mnemonic type object not implemented*)
let begin_move_drag =
  foreign "gtk_window_begin_move_drag" (ptr t_typ @-> int32_t @-> int32_t @-> int32_t @-> uint32_t @-> returning (void))
let begin_resize_drag =
  foreign "gtk_window_begin_resize_drag" (ptr t_typ @-> Window_edge.t_view @-> int32_t @-> int32_t @-> int32_t @-> uint32_t @-> returning (void))
let close =
  foreign "gtk_window_close" (ptr t_typ @-> returning (void))
let deiconify =
  foreign "gtk_window_deiconify" (ptr t_typ @-> returning (void))
let fullscreen =
  foreign "gtk_window_fullscreen" (ptr t_typ @-> returning (void))
(*Not implemented gtk_window_fullscreen_on_monitor type object not implemented*)
let get_accept_focus =
  foreign "gtk_window_get_accept_focus" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_window_get_application return type object not handled*)
(*Not implemented gtk_window_get_attached_to return type object not handled*)
let get_decorated =
  foreign "gtk_window_get_decorated" (ptr t_typ @-> returning (bool))
let get_default_size self =
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_default_size_raw =
    foreign "gtk_window_get_default_size" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_default_size_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
(*Not implemented gtk_window_get_default_widget return type object not handled*)
let get_deletable =
  foreign "gtk_window_get_deletable" (ptr t_typ @-> returning (bool))
let get_destroy_with_parent =
  foreign "gtk_window_get_destroy_with_parent" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_window_get_focus return type object not handled*)
let get_focus_on_map =
  foreign "gtk_window_get_focus_on_map" (ptr t_typ @-> returning (bool))
let get_focus_visible =
  foreign "gtk_window_get_focus_visible" (ptr t_typ @-> returning (bool))
let get_gravity =
  foreign "gtk_window_get_gravity" (ptr t_typ @-> returning (Gravity.t_view))
(*Not implemented gtk_window_get_group return type object not handled*)
let get_has_resize_grip =
  foreign "gtk_window_get_has_resize_grip" (ptr t_typ @-> returning (bool))
let get_hide_titlebar_when_maximized =
  foreign "gtk_window_get_hide_titlebar_when_maximized" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_window_get_icon return type object not handled*)
let get_icon_list =
  foreign "gtk_window_get_icon_list" (ptr t_typ @-> returning (ptr List.t_typ))
let get_icon_name =
  foreign "gtk_window_get_icon_name" (ptr t_typ @-> returning (string_opt))
let get_mnemonic_modifier =
  foreign "gtk_window_get_mnemonic_modifier" (ptr t_typ @-> returning (Modifier_type.t_list_view))
let get_mnemonics_visible =
  foreign "gtk_window_get_mnemonics_visible" (ptr t_typ @-> returning (bool))
let get_modal =
  foreign "gtk_window_get_modal" (ptr t_typ @-> returning (bool))
let get_opacity =
  foreign "gtk_window_get_opacity" (ptr t_typ @-> returning (double))
let get_position self =
  let root_x_ptr = allocate int32_t Int32.zero in
  let root_y_ptr = allocate int32_t Int32.zero in
  let get_position_raw =
    foreign "gtk_window_get_position" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_position_raw self root_x_ptr root_y_ptr in
  let root_x = !@ root_x_ptr in
  let root_y = !@ root_y_ptr in
  (root_x, root_y)
let get_resizable =
  foreign "gtk_window_get_resizable" (ptr t_typ @-> returning (bool))
let get_resize_grip_area self =
  let rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_resize_grip_area_raw =
    foreign "gtk_window_get_resize_grip_area" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning bool)
  in
  let ret = get_resize_grip_area_raw self rect_ptr in
  let rect = !@ rect_ptr in
  (ret, rect)
let get_role =
  foreign "gtk_window_get_role" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_window_get_screen return type object not handled*)
let get_size self =
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let get_size_raw =
    foreign "gtk_window_get_size" (ptr t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_size_raw self width_ptr height_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (width, height)
let get_skip_pager_hint =
  foreign "gtk_window_get_skip_pager_hint" (ptr t_typ @-> returning (bool))
let get_skip_taskbar_hint =
  foreign "gtk_window_get_skip_taskbar_hint" (ptr t_typ @-> returning (bool))
let get_title =
  foreign "gtk_window_get_title" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_window_get_titlebar return type object not handled*)
(*Not implemented gtk_window_get_transient_for return type object not handled*)
let get_type_hint =
  foreign "gtk_window_get_type_hint" (ptr t_typ @-> returning (Window_type_hint.t_view))
let get_urgency_hint =
  foreign "gtk_window_get_urgency_hint" (ptr t_typ @-> returning (bool))
let get_window_type =
  foreign "gtk_window_get_window_type" (ptr t_typ @-> returning (Window_type.t_view))
let has_group =
  foreign "gtk_window_has_group" (ptr t_typ @-> returning (bool))
let has_toplevel_focus =
  foreign "gtk_window_has_toplevel_focus" (ptr t_typ @-> returning (bool))
let iconify =
  foreign "gtk_window_iconify" (ptr t_typ @-> returning (void))
let is_active =
  foreign "gtk_window_is_active" (ptr t_typ @-> returning (bool))
let is_maximized =
  foreign "gtk_window_is_maximized" (ptr t_typ @-> returning (bool))
let maximize =
  foreign "gtk_window_maximize" (ptr t_typ @-> returning (void))
let mnemonic_activate =
  foreign "gtk_window_mnemonic_activate" (ptr t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (bool))
let move =
  foreign "gtk_window_move" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let parse_geometry =
  foreign "gtk_window_parse_geometry" (ptr t_typ @-> string @-> returning (bool))
let present =
  foreign "gtk_window_present" (ptr t_typ @-> returning (void))
let present_with_time =
  foreign "gtk_window_present_with_time" (ptr t_typ @-> uint32_t @-> returning (void))
let propagate_key_event =
  foreign "gtk_window_propagate_key_event" (ptr t_typ @-> ptr Event_key.t_typ @-> returning (bool))
(*Not implemented gtk_window_remove_accel_group type object not implemented*)
(*Not implemented gtk_window_remove_mnemonic type object not implemented*)
let reshow_with_initial_size =
  foreign "gtk_window_reshow_with_initial_size" (ptr t_typ @-> returning (void))
let resize =
  foreign "gtk_window_resize" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let resize_grip_is_visible =
  foreign "gtk_window_resize_grip_is_visible" (ptr t_typ @-> returning (bool))
let resize_to_geometry =
  foreign "gtk_window_resize_to_geometry" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_accept_focus =
  foreign "gtk_window_set_accept_focus" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_window_set_application type object not implemented*)
(*Not implemented gtk_window_set_attached_to type object not implemented*)
let set_decorated =
  foreign "gtk_window_set_decorated" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_window_set_default type object not implemented*)
let set_default_geometry =
  foreign "gtk_window_set_default_geometry" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_default_size =
  foreign "gtk_window_set_default_size" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_deletable =
  foreign "gtk_window_set_deletable" (ptr t_typ @-> bool @-> returning (void))
let set_destroy_with_parent =
  foreign "gtk_window_set_destroy_with_parent" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_window_set_focus type object not implemented*)
let set_focus_on_map =
  foreign "gtk_window_set_focus_on_map" (ptr t_typ @-> bool @-> returning (void))
let set_focus_visible =
  foreign "gtk_window_set_focus_visible" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_window_set_geometry_hints type object not implemented*)
let set_gravity =
  foreign "gtk_window_set_gravity" (ptr t_typ @-> Gravity.t_view @-> returning (void))
let set_has_resize_grip =
  foreign "gtk_window_set_has_resize_grip" (ptr t_typ @-> bool @-> returning (void))
let set_has_user_ref_count =
  foreign "gtk_window_set_has_user_ref_count" (ptr t_typ @-> bool @-> returning (void))
let set_hide_titlebar_when_maximized =
  foreign "gtk_window_set_hide_titlebar_when_maximized" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_window_set_icon type object not implemented*)
let set_icon_from_file self filename =
  let set_icon_from_file_raw =
    foreign "gtk_window_set_icon_from_file" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = set_icon_from_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_icon_list =
  foreign "gtk_window_set_icon_list" (ptr t_typ @-> ptr List.t_typ @-> returning (void))
let set_icon_name =
  foreign "gtk_window_set_icon_name" (ptr t_typ @-> string_opt @-> returning (void))
let set_keep_above =
  foreign "gtk_window_set_keep_above" (ptr t_typ @-> bool @-> returning (void))
let set_keep_below =
  foreign "gtk_window_set_keep_below" (ptr t_typ @-> bool @-> returning (void))
let set_mnemonic_modifier =
  foreign "gtk_window_set_mnemonic_modifier" (ptr t_typ @-> Modifier_type.t_list_view @-> returning (void))
let set_mnemonics_visible =
  foreign "gtk_window_set_mnemonics_visible" (ptr t_typ @-> bool @-> returning (void))
let set_modal =
  foreign "gtk_window_set_modal" (ptr t_typ @-> bool @-> returning (void))
let set_opacity =
  foreign "gtk_window_set_opacity" (ptr t_typ @-> double @-> returning (void))
let set_position =
  foreign "gtk_window_set_position" (ptr t_typ @-> Window_position.t_view @-> returning (void))
let set_resizable =
  foreign "gtk_window_set_resizable" (ptr t_typ @-> bool @-> returning (void))
let set_role =
  foreign "gtk_window_set_role" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_window_set_screen type object not implemented*)
let set_skip_pager_hint =
  foreign "gtk_window_set_skip_pager_hint" (ptr t_typ @-> bool @-> returning (void))
let set_skip_taskbar_hint =
  foreign "gtk_window_set_skip_taskbar_hint" (ptr t_typ @-> bool @-> returning (void))
let set_startup_id =
  foreign "gtk_window_set_startup_id" (ptr t_typ @-> string @-> returning (void))
let set_title =
  foreign "gtk_window_set_title" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_window_set_titlebar type object not implemented*)
(*Not implemented gtk_window_set_transient_for type object not implemented*)
let set_type_hint =
  foreign "gtk_window_set_type_hint" (ptr t_typ @-> Window_type_hint.t_view @-> returning (void))
let set_urgency_hint =
  foreign "gtk_window_set_urgency_hint" (ptr t_typ @-> bool @-> returning (void))
let set_wmclass =
  foreign "gtk_window_set_wmclass" (ptr t_typ @-> string @-> string @-> returning (void))
let stick =
  foreign "gtk_window_stick" (ptr t_typ @-> returning (void))
let unfullscreen =
  foreign "gtk_window_unfullscreen" (ptr t_typ @-> returning (void))
let unmaximize =
  foreign "gtk_window_unmaximize" (ptr t_typ @-> returning (void))
let unstick =
  foreign "gtk_window_unstick" (ptr t_typ @-> returning (void))
