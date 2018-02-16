open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_client_new return type object not handled*)
val add_application_proxy:
  t structure ptr -> string -> unit
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
val get_enable_proxy:
  t structure ptr -> bool
val get_family:
  t structure ptr -> Socket_family.t
(*Not implemented g_socket_client_get_local_address return type object not handled*)
val get_protocol:
  t structure ptr -> Socket_protocol.t
(*Not implemented g_socket_client_get_proxy_resolver return type interface not handled*)
val get_socket_type:
  t structure ptr -> Socket_type.t
val get_timeout:
  t structure ptr -> Unsigned.uint32
val get_tls:
  t structure ptr -> bool
val get_tls_validation_flags:
  t structure ptr -> Tls_certificate_flags.t_list
val set_enable_proxy:
  t structure ptr -> bool -> unit
val set_family:
  t structure ptr -> Socket_family.t -> unit
(*Not implemented g_socket_client_set_local_address type object not implemented*)
val set_protocol:
  t structure ptr -> Socket_protocol.t -> unit
(*Not implemented g_socket_client_set_proxy_resolver type interface not implemented*)
val set_socket_type:
  t structure ptr -> Socket_type.t -> unit
val set_timeout:
  t structure ptr -> Unsigned.uint32 -> unit
val set_tls:
  t structure ptr -> bool -> unit
val set_tls_validation_flags:
  t structure ptr -> Tls_certificate_flags.t_list -> unit
