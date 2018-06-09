open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create family _type protocol =
  let create_raw =
    foreign "g_socket_new" (Socket_family.t_view @-> Socket_type.t_view @-> Socket_protocol.t_view @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_raw family _type protocol err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_fd fd =
  let create_from_fd_raw =
    foreign "g_socket_new_from_fd" (int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_fd_raw fd err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let accept self cancellable =
  let accept_raw =
    foreign "g_socket_accept" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = accept_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let bind self address allow_reuse =
  let bind_raw =
    foreign "g_socket_bind" (t_typ @-> Socket_address.t_typ @-> bool @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = bind_raw self address allow_reuse err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let check_connect_result self =
  let check_connect_result_raw =
    foreign "g_socket_check_connect_result" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = check_connect_result_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let close self =
  let close_raw =
    foreign "g_socket_close" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = close_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let condition_check =
  foreign "g_socket_condition_check" (t_typ @-> IOCondition.t_list_view @-> returning (IOCondition.t_list_view))
let condition_timed_wait self condition timeout cancellable =
  let condition_timed_wait_raw =
    foreign "g_socket_condition_timed_wait" (t_typ @-> IOCondition.t_list_view @-> int64_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = condition_timed_wait_raw self condition timeout cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let condition_wait self condition cancellable =
  let condition_wait_raw =
    foreign "g_socket_condition_wait" (t_typ @-> IOCondition.t_list_view @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = condition_wait_raw self condition cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let connect self address cancellable =
  let connect_raw =
    foreign "g_socket_connect" (t_typ @-> Socket_address.t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = connect_raw self address cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let connection_factory_create_connection =
  foreign "g_socket_connection_factory_create_connection" (t_typ @-> returning (Socket_connection.t_typ))
let get_available_bytes =
  foreign "g_socket_get_available_bytes" (t_typ @-> returning (int64_t))
let get_blocking =
  foreign "g_socket_get_blocking" (t_typ @-> returning (bool))
let get_broadcast =
  foreign "g_socket_get_broadcast" (t_typ @-> returning (bool))
let get_credentials self =
  let get_credentials_raw =
    foreign "g_socket_get_credentials" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Credentials.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_credentials_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_family =
  foreign "g_socket_get_family" (t_typ @-> returning (Socket_family.t_view))
let get_fd =
  foreign "g_socket_get_fd" (t_typ @-> returning (int32_t))
let get_keepalive =
  foreign "g_socket_get_keepalive" (t_typ @-> returning (bool))
let get_listen_backlog =
  foreign "g_socket_get_listen_backlog" (t_typ @-> returning (int32_t))
let get_local_address self =
  let get_local_address_raw =
    foreign "g_socket_get_local_address" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_address.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_local_address_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_multicast_loopback =
  foreign "g_socket_get_multicast_loopback" (t_typ @-> returning (bool))
let get_multicast_ttl =
  foreign "g_socket_get_multicast_ttl" (t_typ @-> returning (uint32_t))
let get_option self level optname =
  let get_option_raw =
    foreign "g_socket_get_option" (t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value_ptr = allocate int32_t Int32.zero in
  let ret = get_option_raw self level optname value_ptr err_ptr_ptr in
  let get_ret_value () =
    let value = !@ value_ptr in
    (ret, value)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let get_protocol =
  foreign "g_socket_get_protocol" (t_typ @-> returning (Socket_protocol.t_view))
let get_remote_address self =
  let get_remote_address_raw =
    foreign "g_socket_get_remote_address" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_address.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_remote_address_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_socket_type =
  foreign "g_socket_get_socket_type" (t_typ @-> returning (Socket_type.t_view))
let get_timeout =
  foreign "g_socket_get_timeout" (t_typ @-> returning (uint32_t))
let get_ttl =
  foreign "g_socket_get_ttl" (t_typ @-> returning (uint32_t))
let is_closed =
  foreign "g_socket_is_closed" (t_typ @-> returning (bool))
let is_connected =
  foreign "g_socket_is_connected" (t_typ @-> returning (bool))
let join_multicast_group self group source_specific iface =
  let join_multicast_group_raw =
    foreign "g_socket_join_multicast_group" (t_typ @-> Inet_address.t_typ @-> bool @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = join_multicast_group_raw self group source_specific iface err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let join_multicast_group_ssm self group source_specific iface =
  let join_multicast_group_ssm_raw =
    foreign "g_socket_join_multicast_group_ssm" (t_typ @-> Inet_address.t_typ @-> Inet_address.t_typ @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = join_multicast_group_ssm_raw self group source_specific iface err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let leave_multicast_group self group source_specific iface =
  let leave_multicast_group_raw =
    foreign "g_socket_leave_multicast_group" (t_typ @-> Inet_address.t_typ @-> bool @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = leave_multicast_group_raw self group source_specific iface err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let leave_multicast_group_ssm self group source_specific iface =
  let leave_multicast_group_ssm_raw =
    foreign "g_socket_leave_multicast_group_ssm" (t_typ @-> Inet_address.t_typ @-> Inet_address.t_typ @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = leave_multicast_group_ssm_raw self group source_specific iface err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let listen self =
  let listen_raw =
    foreign "g_socket_listen" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = listen_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_socket_receive type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_from type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_message type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_with_blocking type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_message type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_to type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_with_blocking type C Array type for Types.Array tag not implemented*)
let set_blocking =
  foreign "g_socket_set_blocking" (t_typ @-> bool @-> returning (void))
let set_broadcast =
  foreign "g_socket_set_broadcast" (t_typ @-> bool @-> returning (void))
let set_keepalive =
  foreign "g_socket_set_keepalive" (t_typ @-> bool @-> returning (void))
let set_listen_backlog =
  foreign "g_socket_set_listen_backlog" (t_typ @-> int32_t @-> returning (void))
let set_multicast_loopback =
  foreign "g_socket_set_multicast_loopback" (t_typ @-> bool @-> returning (void))
let set_multicast_ttl =
  foreign "g_socket_set_multicast_ttl" (t_typ @-> uint32_t @-> returning (void))
let set_option self level optname value =
  let set_option_raw =
    foreign "g_socket_set_option" (t_typ @-> int32_t @-> int32_t @-> int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_option_raw self level optname value err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_timeout =
  foreign "g_socket_set_timeout" (t_typ @-> uint32_t @-> returning (void))
let set_ttl =
  foreign "g_socket_set_ttl" (t_typ @-> uint32_t @-> returning (void))
let shutdown self shutdown_read shutdown_write =
  let shutdown_raw =
    foreign "g_socket_shutdown" (t_typ @-> bool @-> bool @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = shutdown_raw self shutdown_read shutdown_write err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let speaks_ipv4 =
  foreign "g_socket_speaks_ipv4" (t_typ @-> returning (bool))
