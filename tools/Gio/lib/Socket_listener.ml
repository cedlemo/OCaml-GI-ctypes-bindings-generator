open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_socket_listener_new" (void @-> returning (t_typ))
let accept self cancellable =
  let accept_raw =
    foreign "g_socket_listener_accept" (t_typ @-> Cancellable.t_typ @-> ptr (Object.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_connection.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let source_object_ptr = allocate (ptr_opt Object.t_typ) None in
  let ret = accept_raw self cancellable source_object_ptr err_ptr_ptr in
  let get_ret_value () =
    let source_object = !@ source_object_ptr in
    (ret, source_object)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_socket_listener_accept_async type callback not implemented*)
(*Not implemented g_socket_listener_accept_finish type interface not implemented*)
let accept_socket self cancellable =
  let accept_socket_raw =
    foreign "g_socket_listener_accept_socket" (t_typ @-> Cancellable.t_typ @-> ptr (Object.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let source_object_ptr = allocate (ptr_opt Object.t_typ) None in
  let ret = accept_socket_raw self cancellable source_object_ptr err_ptr_ptr in
  let get_ret_value () =
    let source_object = !@ source_object_ptr in
    (ret, source_object)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_socket_listener_accept_socket_async type callback not implemented*)
(*Not implemented g_socket_listener_accept_socket_finish type interface not implemented*)
let add_address self address _type protocol source_object =
  let add_address_raw =
    foreign "g_socket_listener_add_address" (t_typ @-> Socket_address.t_typ @-> Socket_type.t_view @-> Socket_protocol.t_view @-> Object.t_typ @-> ptr (Socket_address.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let effective_address_ptr = allocate (ptr_opt Socket_address.t_typ) None in
  let ret = add_address_raw self address _type protocol source_object effective_address_ptr err_ptr_ptr in
  let get_ret_value () =
    let effective_address = !@ effective_address_ptr in
    (ret, effective_address)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let add_any_inet_port self source_object =
  let add_any_inet_port_raw =
    foreign "g_socket_listener_add_any_inet_port" (t_typ @-> Object.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint16_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_any_inet_port_raw self source_object err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_inet_port self port source_object =
  let add_inet_port_raw =
    foreign "g_socket_listener_add_inet_port" (t_typ @-> uint16_t @-> Object.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_inet_port_raw self port source_object err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_socket self socket source_object =
  let add_socket_raw =
    foreign "g_socket_listener_add_socket" (t_typ @-> Socket.t_typ @-> Object.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_socket_raw self socket source_object err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let close =
  foreign "g_socket_listener_close" (t_typ @-> returning (void))
let set_backlog =
  foreign "g_socket_listener_set_backlog" (t_typ @-> int32_t @-> returning (void))
