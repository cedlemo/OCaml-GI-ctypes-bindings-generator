open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val add_application_proxy :
  t -> string -> unit
(*Not implemented g_socket_client_connect type interface not implemented*)
(*Not implemented g_socket_client_connect_async type interface not implemented*)
(*Not implemented g_socket_client_connect_finish type interface not implemented*)
val connect_to_host :
  t -> string -> Unsigned.uint16 -> Cancellable.t -> (Socket_connection.t, Error.t structure ptr option) result
(*Not implemented g_socket_client_connect_to_host_async type callback not implemented*)
(*Not implemented g_socket_client_connect_to_host_finish type interface not implemented*)
val connect_to_service :
  t -> string -> string -> Cancellable.t -> (Socket_connection.t, Error.t structure ptr option) result
(*Not implemented g_socket_client_connect_to_service_async type callback not implemented*)
(*Not implemented g_socket_client_connect_to_service_finish type interface not implemented*)
val connect_to_uri :
  t -> string -> Unsigned.uint16 -> Cancellable.t -> (Socket_connection.t, Error.t structure ptr option) result
(*Not implemented g_socket_client_connect_to_uri_async type callback not implemented*)
(*Not implemented g_socket_client_connect_to_uri_finish type interface not implemented*)
val get_enable_proxy :
  t -> bool
val get_family :
  t -> Socket_family.t
val get_local_address :
  t -> Socket_address.t
val get_protocol :
  t -> Socket_protocol.t
(*Not implemented g_socket_client_get_proxy_resolver return type interface not handled*)
val get_socket_type :
  t -> Socket_type.t
val get_timeout :
  t -> Unsigned.uint32
val get_tls :
  t -> bool
val get_tls_validation_flags :
  t -> Tls_certificate_flags.t_list
val set_enable_proxy :
  t -> bool -> unit
val set_family :
  t -> Socket_family.t -> unit
val set_local_address :
  t -> Socket_address.t -> unit
val set_protocol :
  t -> Socket_protocol.t -> unit
(*Not implemented g_socket_client_set_proxy_resolver type interface not implemented*)
val set_socket_type :
  t -> Socket_type.t -> unit
val set_timeout :
  t -> Unsigned.uint32 -> unit
val set_tls :
  t -> bool -> unit
val set_tls_validation_flags :
  t -> Tls_certificate_flags.t_list -> unit
