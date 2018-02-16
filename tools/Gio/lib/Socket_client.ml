open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_socket_client_new return type object not handled*)
let add_application_proxy =
  foreign "g_socket_client_add_application_proxy" (ptr t_typ @-> string @-> returning (void))
(*Not implemented g_socket_client_connect type interface not implemented*)
(*Not implemented g_socket_client_connect_async type interface not implemented*)
(*Not implemented g_socket_client_connect_finish type interface not implemented*)
(*Not implemented g_socket_client_connect_to_host type object not implemented*)
(*Not implemented g_socket_client_connect_to_host_async type object not implemented*)
(*Not implemented g_socket_client_connect_to_host_finish type interface not implemented*)
(*Not implemented g_socket_client_connect_to_service type object not implemented*)
(*Not implemented g_socket_client_connect_to_service_async type object not implemented*)
(*Not implemented g_socket_client_connect_to_service_finish type interface not implemented*)
(*Not implemented g_socket_client_connect_to_uri type object not implemented*)
(*Not implemented g_socket_client_connect_to_uri_async type object not implemented*)
(*Not implemented g_socket_client_connect_to_uri_finish type interface not implemented*)
let get_enable_proxy =
  foreign "g_socket_client_get_enable_proxy" (ptr t_typ @-> returning (bool))
let get_family =
  foreign "g_socket_client_get_family" (ptr t_typ @-> returning (Socket_family.t_view))
(*Not implemented g_socket_client_get_local_address return type object not handled*)
let get_protocol =
  foreign "g_socket_client_get_protocol" (ptr t_typ @-> returning (Socket_protocol.t_view))
(*Not implemented g_socket_client_get_proxy_resolver return type interface not handled*)
let get_socket_type =
  foreign "g_socket_client_get_socket_type" (ptr t_typ @-> returning (Socket_type.t_view))
let get_timeout =
  foreign "g_socket_client_get_timeout" (ptr t_typ @-> returning (uint32_t))
let get_tls =
  foreign "g_socket_client_get_tls" (ptr t_typ @-> returning (bool))
let get_tls_validation_flags =
  foreign "g_socket_client_get_tls_validation_flags" (ptr t_typ @-> returning (Tls_certificate_flags.t_list_view))
let set_enable_proxy =
  foreign "g_socket_client_set_enable_proxy" (ptr t_typ @-> bool @-> returning (void))
let set_family =
  foreign "g_socket_client_set_family" (ptr t_typ @-> Socket_family.t_view @-> returning (void))
(*Not implemented g_socket_client_set_local_address type object not implemented*)
let set_protocol =
  foreign "g_socket_client_set_protocol" (ptr t_typ @-> Socket_protocol.t_view @-> returning (void))
(*Not implemented g_socket_client_set_proxy_resolver type interface not implemented*)
let set_socket_type =
  foreign "g_socket_client_set_socket_type" (ptr t_typ @-> Socket_type.t_view @-> returning (void))
let set_timeout =
  foreign "g_socket_client_set_timeout" (ptr t_typ @-> uint32_t @-> returning (void))
let set_tls =
  foreign "g_socket_client_set_tls" (ptr t_typ @-> bool @-> returning (void))
let set_tls_validation_flags =
  foreign "g_socket_client_set_tls_validation_flags" (ptr t_typ @-> Tls_certificate_flags.t_list_view @-> returning (void))
