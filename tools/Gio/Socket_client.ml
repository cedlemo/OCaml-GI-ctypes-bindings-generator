open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_socket_client_new" (void @-> returning (t_typ))
let add_application_proxy =
  foreign "g_socket_client_add_application_proxy" (t_typ @-> string @-> returning (void))
(*Not implemented g_socket_client_connect type interface not implemented*)
(*Not implemented g_socket_client_connect_async type interface not implemented*)
(*Not implemented g_socket_client_connect_finish type interface not implemented*)
let connect_to_host self host_and_port default_port cancellable =
  let connect_to_host_raw =
    foreign "g_socket_client_connect_to_host" (t_typ @-> string @-> uint16_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_connection.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = connect_to_host_raw self host_and_port default_port cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_socket_client_connect_to_host_async type callback not implemented*)
(*Not implemented g_socket_client_connect_to_host_finish type interface not implemented*)
let connect_to_service self domain service cancellable =
  let connect_to_service_raw =
    foreign "g_socket_client_connect_to_service" (t_typ @-> string @-> string @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_connection.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = connect_to_service_raw self domain service cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_socket_client_connect_to_service_async type callback not implemented*)
(*Not implemented g_socket_client_connect_to_service_finish type interface not implemented*)
let connect_to_uri self uri default_port cancellable =
  let connect_to_uri_raw =
    foreign "g_socket_client_connect_to_uri" (t_typ @-> string @-> uint16_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Socket_connection.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = connect_to_uri_raw self uri default_port cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_socket_client_connect_to_uri_async type callback not implemented*)
(*Not implemented g_socket_client_connect_to_uri_finish type interface not implemented*)
let get_enable_proxy =
  foreign "g_socket_client_get_enable_proxy" (t_typ @-> returning (bool))
let get_family =
  foreign "g_socket_client_get_family" (t_typ @-> returning (Socket_family.t_view))
let get_local_address =
  foreign "g_socket_client_get_local_address" (t_typ @-> returning (Socket_address.t_typ))
let get_protocol =
  foreign "g_socket_client_get_protocol" (t_typ @-> returning (Socket_protocol.t_view))
(*Not implemented g_socket_client_get_proxy_resolver return type interface not handled*)
let get_socket_type =
  foreign "g_socket_client_get_socket_type" (t_typ @-> returning (Socket_type.t_view))
let get_timeout =
  foreign "g_socket_client_get_timeout" (t_typ @-> returning (uint32_t))
let get_tls =
  foreign "g_socket_client_get_tls" (t_typ @-> returning (bool))
let get_tls_validation_flags =
  foreign "g_socket_client_get_tls_validation_flags" (t_typ @-> returning (Tls_certificate_flags.t_list_view))
let set_enable_proxy =
  foreign "g_socket_client_set_enable_proxy" (t_typ @-> bool @-> returning (void))
let set_family =
  foreign "g_socket_client_set_family" (t_typ @-> Socket_family.t_view @-> returning (void))
let set_local_address =
  foreign "g_socket_client_set_local_address" (t_typ @-> Socket_address.t_typ @-> returning (void))
let set_protocol =
  foreign "g_socket_client_set_protocol" (t_typ @-> Socket_protocol.t_view @-> returning (void))
(*Not implemented g_socket_client_set_proxy_resolver type interface not implemented*)
let set_socket_type =
  foreign "g_socket_client_set_socket_type" (t_typ @-> Socket_type.t_view @-> returning (void))
let set_timeout =
  foreign "g_socket_client_set_timeout" (t_typ @-> uint32_t @-> returning (void))
let set_tls =
  foreign "g_socket_client_set_tls" (t_typ @-> bool @-> returning (void))
let set_tls_validation_flags =
  foreign "g_socket_client_set_tls_validation_flags" (t_typ @-> Tls_certificate_flags.t_list_view @-> returning (void))
