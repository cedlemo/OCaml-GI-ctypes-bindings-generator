open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_socket_new return type object not handled*)
(*Not implemented g_socket_new_from_fd return type object not handled*)
(*Not implemented g_socket_accept type object not implemented*)
(*Not implemented g_socket_bind type object not implemented*)
let check_connect_result self =
  let check_connect_result_raw =
    foreign "g_socket_check_connect_result" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = check_connect_result_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let close self =
  let close_raw =
    foreign "g_socket_close" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = close_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let condition_check =
  foreign "g_socket_condition_check" (ptr t_typ @-> IOCondition.t_list_view @-> returning (IOCondition.t_list_view))
(*Not implemented g_socket_condition_timed_wait type object not implemented*)
(*Not implemented g_socket_condition_wait type object not implemented*)
(*Not implemented g_socket_connect type object not implemented*)
(*Not implemented g_socket_connection_factory_create_connection return type object not handled*)
let get_available_bytes =
  foreign "g_socket_get_available_bytes" (ptr t_typ @-> returning (int64_t))
let get_blocking =
  foreign "g_socket_get_blocking" (ptr t_typ @-> returning (bool))
let get_broadcast =
  foreign "g_socket_get_broadcast" (ptr t_typ @-> returning (bool))
(*Not implemented g_socket_get_credentials return type object not handled*)
let get_family =
  foreign "g_socket_get_family" (ptr t_typ @-> returning (Socket_family.t_view))
let get_fd =
  foreign "g_socket_get_fd" (ptr t_typ @-> returning (int32_t))
let get_keepalive =
  foreign "g_socket_get_keepalive" (ptr t_typ @-> returning (bool))
let get_listen_backlog =
  foreign "g_socket_get_listen_backlog" (ptr t_typ @-> returning (int32_t))
(*Not implemented g_socket_get_local_address return type object not handled*)
let get_multicast_loopback =
  foreign "g_socket_get_multicast_loopback" (ptr t_typ @-> returning (bool))
let get_multicast_ttl =
  foreign "g_socket_get_multicast_ttl" (ptr t_typ @-> returning (uint32_t))
let get_option self level optname =
  let value_ptr = allocate int32_t Int32.zero in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let get_option_raw =
    foreign "g_socket_get_option" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (int32_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
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
  foreign "g_socket_get_protocol" (ptr t_typ @-> returning (Socket_protocol.t_view))
(*Not implemented g_socket_get_remote_address return type object not handled*)
let get_socket_type =
  foreign "g_socket_get_socket_type" (ptr t_typ @-> returning (Socket_type.t_view))
let get_timeout =
  foreign "g_socket_get_timeout" (ptr t_typ @-> returning (uint32_t))
let get_ttl =
  foreign "g_socket_get_ttl" (ptr t_typ @-> returning (uint32_t))
let is_closed =
  foreign "g_socket_is_closed" (ptr t_typ @-> returning (bool))
let is_connected =
  foreign "g_socket_is_connected" (ptr t_typ @-> returning (bool))
(*Not implemented g_socket_join_multicast_group type object not implemented*)
(*Not implemented g_socket_leave_multicast_group type object not implemented*)
let listen self =
  let listen_raw =
    foreign "g_socket_listen" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = listen_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_socket_receive type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_from type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_message type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_with_blocking type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_message type object not implemented*)
(*Not implemented g_socket_send_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_to type object not implemented*)
(*Not implemented g_socket_send_with_blocking type C Array type for Types.Array tag not implemented*)
let set_blocking =
  foreign "g_socket_set_blocking" (ptr t_typ @-> bool @-> returning (void))
let set_broadcast =
  foreign "g_socket_set_broadcast" (ptr t_typ @-> bool @-> returning (void))
let set_keepalive =
  foreign "g_socket_set_keepalive" (ptr t_typ @-> bool @-> returning (void))
let set_listen_backlog =
  foreign "g_socket_set_listen_backlog" (ptr t_typ @-> int32_t @-> returning (void))
let set_multicast_loopback =
  foreign "g_socket_set_multicast_loopback" (ptr t_typ @-> bool @-> returning (void))
let set_multicast_ttl =
  foreign "g_socket_set_multicast_ttl" (ptr t_typ @-> uint32_t @-> returning (void))
let set_option self level optname value =
  let set_option_raw =
    foreign "g_socket_set_option" (ptr t_typ @-> int32_t @-> int32_t @-> int32_t@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = set_option_raw self level optname value err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_timeout =
  foreign "g_socket_set_timeout" (ptr t_typ @-> uint32_t @-> returning (void))
let set_ttl =
  foreign "g_socket_set_ttl" (ptr t_typ @-> uint32_t @-> returning (void))
let shutdown self shutdown_read shutdown_write =
  let shutdown_raw =
    foreign "g_socket_shutdown" (ptr t_typ @-> bool @-> bool@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = shutdown_raw self shutdown_read shutdown_write err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let speaks_ipv4 =
  foreign "g_socket_speaks_ipv4" (ptr t_typ @-> returning (bool))
