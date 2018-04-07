open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_socket_connection_factory_lookup_type return type gType not handled*)
(*Not implemented g_socket_connection_factory_register_type type gType not implemented*)
let connect self address cancellable =
  let connect_raw =
    foreign "g_socket_connection_connect" (t_typ @-> Socket_address.t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = connect_raw self address cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_socket_connection_connect_async type callback not implemented*)
(*Not implemented g_socket_connection_connect_finish type interface not implemented*)
let get_local_address self =
  let get_local_address_raw =
    foreign "g_socket_connection_get_local_address" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_address.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_local_address_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_remote_address self =
  let get_remote_address_raw =
    foreign "g_socket_connection_get_remote_address" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_address.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_remote_address_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_socket =
  foreign "g_socket_connection_get_socket" (t_typ @-> returning (Socket.t_typ))
let is_connected =
  foreign "g_socket_connection_is_connected" (t_typ @-> returning (bool))
