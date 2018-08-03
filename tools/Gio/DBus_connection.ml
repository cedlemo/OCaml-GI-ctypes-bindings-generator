open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_connection_new_finish type interface not implemented*)
(*Not implemented g_dbus_connection_new_for_address_finish type interface not implemented*)
let create_for_address_sync address flags observer cancellable =
  let create_for_address_sync_raw =
    foreign "g_dbus_connection_new_for_address_sync" (string @-> DBus_connection_flags.t_list_view @-> ptr_opt DBus_auth_observer.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_for_address_sync_raw address flags observer cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_sync stream guid flags observer cancellable =
  let create_sync_raw =
    foreign "g_dbus_connection_new_sync" (ptr IOStream.t_typ @-> string_opt @-> DBus_connection_flags.t_list_view @-> ptr_opt DBus_auth_observer.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_sync_raw stream guid flags observer cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_connection_new type callback not implemented*)
(*Not implemented g_dbus_connection_new_for_address type callback not implemented*)
(*Not implemented g_dbus_connection_add_filter type callback not implemented*)
(*Not implemented g_dbus_connection_call type callback not implemented*)
(*Not implemented g_dbus_connection_call_finish type interface not implemented*)
let call_sync self bus_name object_path interface_name method_name parameters reply_type flags timeout_msec cancellable =
  let call_sync_raw =
    foreign "g_dbus_connection_call_sync" (t_typ @-> string_opt @-> string @-> string @-> string @-> ptr_opt Variant.t_typ @-> ptr_opt Variant_type.t_typ @-> DBus_call_flags.t_list_view @-> int32_t @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Variant.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = call_sync_raw self bus_name object_path interface_name method_name parameters reply_type flags timeout_msec cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_connection_call_with_unix_fd_list type callback not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list_finish type interface not implemented*)
let call_with_unix_fd_list_sync self bus_name object_path interface_name method_name parameters reply_type flags timeout_msec fd_list cancellable =
  let call_with_unix_fd_list_sync_raw =
    foreign "g_dbus_connection_call_with_unix_fd_list_sync" (t_typ @-> string_opt @-> string @-> string @-> string @-> ptr_opt Variant.t_typ @-> ptr_opt Variant_type.t_typ @-> DBus_call_flags.t_list_view @-> int32_t @-> ptr_opt Unix_fdlist.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr Unix_fdlist.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Variant.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let out_fd_list_ptr = allocate (ptr_opt Unix_fdlist.t_typ) None in
  let ret = call_with_unix_fd_list_sync_raw self bus_name object_path interface_name method_name parameters reply_type flags timeout_msec fd_list cancellable out_fd_list_ptr err_ptr_ptr in
  let get_ret_value () =
    let out_fd_list = !@ out_fd_list_ptr in
    (ret, out_fd_list)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_dbus_connection_close type callback not implemented*)
(*Not implemented g_dbus_connection_close_finish type interface not implemented*)
let close_sync self cancellable =
  let close_sync_raw =
    foreign "g_dbus_connection_close_sync" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = close_sync_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let emit_signal self destination_bus_name object_path interface_name signal_name parameters =
  let emit_signal_raw =
    foreign "g_dbus_connection_emit_signal" (t_typ @-> string_opt @-> string @-> string @-> string @-> ptr_opt Variant.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = emit_signal_raw self destination_bus_name object_path interface_name signal_name parameters err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_connection_export_action_group type interface not implemented*)
let export_menu_model self object_path menu =
  let export_menu_model_raw =
    foreign "g_dbus_connection_export_menu_model" (t_typ @-> string @-> ptr Menu_model.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = export_menu_model_raw self object_path menu err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_connection_flush type callback not implemented*)
(*Not implemented g_dbus_connection_flush_finish type interface not implemented*)
let flush_sync self cancellable =
  let flush_sync_raw =
    foreign "g_dbus_connection_flush_sync" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = flush_sync_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_capabilities =
  foreign "g_dbus_connection_get_capabilities" (t_typ @-> returning (DBus_capability_flags.t_list_view))
let get_exit_on_close =
  foreign "g_dbus_connection_get_exit_on_close" (t_typ @-> returning (bool))
let get_guid =
  foreign "g_dbus_connection_get_guid" (t_typ @-> returning (string_opt))
let get_last_serial =
  foreign "g_dbus_connection_get_last_serial" (t_typ @-> returning (uint32_t))
let get_peer_credentials =
  foreign "g_dbus_connection_get_peer_credentials" (t_typ @-> returning (ptr_opt Credentials.t_typ))
let get_stream =
  foreign "g_dbus_connection_get_stream" (t_typ @-> returning (ptr IOStream.t_typ))
let get_unique_name =
  foreign "g_dbus_connection_get_unique_name" (t_typ @-> returning (string_opt))
let is_closed =
  foreign "g_dbus_connection_is_closed" (t_typ @-> returning (bool))
let register_object self object_path interface_info method_call_closure get_property_closure set_property_closure =
  let register_object_raw =
    foreign "g_dbus_connection_register_object_with_closures" (t_typ @-> string @-> ptr DBus_interface_info.t_typ @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = register_object_raw self object_path interface_info method_call_closure get_property_closure set_property_closure err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_connection_register_subtree type callback not implemented*)
let remove_filter =
  foreign "g_dbus_connection_remove_filter" (t_typ @-> uint32_t @-> returning (void))
let send_message self message flags =
  let send_message_raw =
    foreign "g_dbus_connection_send_message" (t_typ @-> ptr DBus_message.t_typ @-> DBus_send_message_flags.t_list_view @-> ptr (uint32_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let out_serial_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let ret = send_message_raw self message flags out_serial_ptr err_ptr_ptr in
  let get_ret_value () =
    let out_serial = !@ out_serial_ptr in
    (ret, out_serial)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_dbus_connection_send_message_with_reply type callback not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply_finish type interface not implemented*)
let send_message_with_reply_sync self message flags timeout_msec cancellable =
  let send_message_with_reply_sync_raw =
    foreign "g_dbus_connection_send_message_with_reply_sync" (t_typ @-> ptr DBus_message.t_typ @-> DBus_send_message_flags.t_list_view @-> int32_t @-> ptr_opt Cancellable.t_typ @-> ptr (uint32_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt DBus_message.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let out_serial_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let ret = send_message_with_reply_sync_raw self message flags timeout_msec cancellable out_serial_ptr err_ptr_ptr in
  let get_ret_value () =
    let out_serial = !@ out_serial_ptr in
    (ret, out_serial)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let set_exit_on_close =
  foreign "g_dbus_connection_set_exit_on_close" (t_typ @-> bool @-> returning (void))
(*Not implemented g_dbus_connection_signal_subscribe type callback not implemented*)
let signal_unsubscribe =
  foreign "g_dbus_connection_signal_unsubscribe" (t_typ @-> uint32_t @-> returning (void))
let start_message_processing =
  foreign "g_dbus_connection_start_message_processing" (t_typ @-> returning (void))
let unexport_action_group =
  foreign "g_dbus_connection_unexport_action_group" (t_typ @-> uint32_t @-> returning (void))
let unexport_menu_model =
  foreign "g_dbus_connection_unexport_menu_model" (t_typ @-> uint32_t @-> returning (void))
let unregister_object =
  foreign "g_dbus_connection_unregister_object" (t_typ @-> uint32_t @-> returning (bool))
let unregister_subtree =
  foreign "g_dbus_connection_unregister_subtree" (t_typ @-> uint32_t @-> returning (bool))
