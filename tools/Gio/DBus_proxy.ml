open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_proxy_new_finish type interface not implemented*)
(*Not implemented g_dbus_proxy_new_for_bus_finish type interface not implemented*)
let create_for_bus_sync bus_type flags info name object_path interface_name cancellable =
  let create_for_bus_sync_raw =
    foreign "g_dbus_proxy_new_for_bus_sync" (Bus_type.t_view @-> DBus_proxy_flags.t_list_view @-> ptr_opt DBus_interface_info.t_typ @-> string @-> string @-> string @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_for_bus_sync_raw bus_type flags info name object_path interface_name cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_sync connection flags info name object_path interface_name cancellable =
  let create_sync_raw =
    foreign "g_dbus_proxy_new_sync" (ptr DBus_connection.t_typ @-> DBus_proxy_flags.t_list_view @-> ptr_opt DBus_interface_info.t_typ @-> string_opt @-> string @-> string @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_sync_raw connection flags info name object_path interface_name cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_proxy_new type callback not implemented*)
(*Not implemented g_dbus_proxy_new_for_bus type callback not implemented*)
(*Not implemented g_dbus_proxy_call type callback not implemented*)
(*Not implemented g_dbus_proxy_call_finish type interface not implemented*)
let call_sync self method_name parameters flags timeout_msec cancellable =
  let call_sync_raw =
    foreign "g_dbus_proxy_call_sync" (t_typ @-> string @-> ptr_opt Variant.t_typ @-> DBus_call_flags.t_list_view @-> int32_t @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Variant.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = call_sync_raw self method_name parameters flags timeout_msec cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_proxy_call_with_unix_fd_list type callback not implemented*)
(*Not implemented g_dbus_proxy_call_with_unix_fd_list_finish type interface not implemented*)
let call_with_unix_fd_list_sync self method_name parameters flags timeout_msec fd_list cancellable =
  let call_with_unix_fd_list_sync_raw =
    foreign "g_dbus_proxy_call_with_unix_fd_list_sync" (t_typ @-> string @-> ptr_opt Variant.t_typ @-> DBus_call_flags.t_list_view @-> int32_t @-> ptr_opt Unix_fdlist.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr Unix_fdlist.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Variant.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let out_fd_list_ptr = allocate (ptr_opt Unix_fdlist.t_typ) None in
  let ret = call_with_unix_fd_list_sync_raw self method_name parameters flags timeout_msec fd_list cancellable out_fd_list_ptr err_ptr_ptr in
  let get_ret_value () =
    let out_fd_list = !@ out_fd_list_ptr in
    (ret, out_fd_list)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let get_cached_property =
  foreign "g_dbus_proxy_get_cached_property" (t_typ @-> string @-> returning (ptr_opt Variant.t_typ))
(*Not implemented g_dbus_proxy_get_cached_property_names return type C Array type for Types.Array tag not handled*)
let get_connection =
  foreign "g_dbus_proxy_get_connection" (t_typ @-> returning (ptr DBus_connection.t_typ))
let get_default_timeout =
  foreign "g_dbus_proxy_get_default_timeout" (t_typ @-> returning (int32_t))
let get_flags =
  foreign "g_dbus_proxy_get_flags" (t_typ @-> returning (DBus_proxy_flags.t_list_view))
let get_interface_info =
  foreign "g_dbus_proxy_get_interface_info" (t_typ @-> returning (ptr_opt DBus_interface_info.t_typ))
let get_interface_name =
  foreign "g_dbus_proxy_get_interface_name" (t_typ @-> returning (string_opt))
let get_name =
  foreign "g_dbus_proxy_get_name" (t_typ @-> returning (string_opt))
let get_name_owner =
  foreign "g_dbus_proxy_get_name_owner" (t_typ @-> returning (string_opt))
let get_object_path =
  foreign "g_dbus_proxy_get_object_path" (t_typ @-> returning (string_opt))
let set_cached_property =
  foreign "g_dbus_proxy_set_cached_property" (t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let set_default_timeout =
  foreign "g_dbus_proxy_set_default_timeout" (t_typ @-> int32_t @-> returning (void))
let set_interface_info =
  foreign "g_dbus_proxy_set_interface_info" (t_typ @-> ptr_opt DBus_interface_info.t_typ @-> returning (void))
