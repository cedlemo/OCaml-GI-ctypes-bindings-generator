open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_connection_new_finish type interface not implemented*)
(*Not implemented g_dbus_connection_new_for_address_finish type interface not implemented*)
(*Not implemented g_dbus_connection_new_for_address_sync type object not implemented*)
(*Not implemented g_dbus_connection_new_sync type object not implemented*)
(*Not implemented g_dbus_connection_new type object not implemented*)
(*Not implemented g_dbus_connection_new_for_address type object not implemented*)
(*Not implemented g_dbus_connection_add_filter type callback not implemented*)
(*Not implemented g_dbus_connection_call type object not implemented*)
(*Not implemented g_dbus_connection_call_finish type interface not implemented*)
(*Not implemented g_dbus_connection_call_sync type object not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list type object not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list_finish type interface not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list_sync type object not implemented*)
(*Not implemented g_dbus_connection_close type object not implemented*)
(*Not implemented g_dbus_connection_close_finish type interface not implemented*)
(*Not implemented g_dbus_connection_close_sync type object not implemented*)
let emit_signal self destination_bus_name object_path interface_name signal_name parameters =
  let emit_signal_raw =
    foreign "g_dbus_connection_emit_signal" (ptr t_typ @-> string_opt @-> string @-> string @-> string @-> ptr_opt Variant.t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = emit_signal_raw self destination_bus_name object_path interface_name signal_name parameters err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_connection_export_action_group type interface not implemented*)
(*Not implemented g_dbus_connection_export_menu_model type object not implemented*)
(*Not implemented g_dbus_connection_flush type object not implemented*)
(*Not implemented g_dbus_connection_flush_finish type interface not implemented*)
(*Not implemented g_dbus_connection_flush_sync type object not implemented*)
let get_capabilities =
  foreign "g_dbus_connection_get_capabilities" (ptr t_typ @-> returning (DBus_capability_flags.t_list_view))
let get_exit_on_close =
  foreign "g_dbus_connection_get_exit_on_close" (ptr t_typ @-> returning (bool))
let get_guid =
  foreign "g_dbus_connection_get_guid" (ptr t_typ @-> returning (string_opt))
let get_last_serial =
  foreign "g_dbus_connection_get_last_serial" (ptr t_typ @-> returning (uint32_t))
(*Not implemented g_dbus_connection_get_peer_credentials return type object not handled*)
(*Not implemented g_dbus_connection_get_stream return type object not handled*)
let get_unique_name =
  foreign "g_dbus_connection_get_unique_name" (ptr t_typ @-> returning (string_opt))
let is_closed =
  foreign "g_dbus_connection_is_closed" (ptr t_typ @-> returning (bool))
let register_object self object_path interface_info method_call_closure get_property_closure set_property_closure =
  let register_object_raw =
    foreign "g_dbus_connection_register_object_with_closures" (ptr t_typ @-> string @-> ptr DBus_interface_info.t_typ @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = register_object_raw self object_path interface_info method_call_closure get_property_closure set_property_closure err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_connection_register_subtree type callback not implemented*)
let remove_filter =
  foreign "g_dbus_connection_remove_filter" (ptr t_typ @-> uint32_t @-> returning (void))
(*Not implemented g_dbus_connection_send_message type object not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply type object not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply_finish type interface not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply_sync type object not implemented*)
let set_exit_on_close =
  foreign "g_dbus_connection_set_exit_on_close" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented g_dbus_connection_signal_subscribe type callback not implemented*)
let signal_unsubscribe =
  foreign "g_dbus_connection_signal_unsubscribe" (ptr t_typ @-> uint32_t @-> returning (void))
let start_message_processing =
  foreign "g_dbus_connection_start_message_processing" (ptr t_typ @-> returning (void))
let unexport_action_group =
  foreign "g_dbus_connection_unexport_action_group" (ptr t_typ @-> uint32_t @-> returning (void))
let unexport_menu_model =
  foreign "g_dbus_connection_unexport_menu_model" (ptr t_typ @-> uint32_t @-> returning (void))
let unregister_object =
  foreign "g_dbus_connection_unregister_object" (ptr t_typ @-> uint32_t @-> returning (bool))
let unregister_subtree =
  foreign "g_dbus_connection_unregister_subtree" (ptr t_typ @-> uint32_t @-> returning (bool))
