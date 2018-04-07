open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_connection_factory_lookup_type return type gType not handled*)
(*Not implemented g_socket_connection_factory_register_type type gType not implemented*)
val connect :
  t -> Socket_address.t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_socket_connection_connect_async type callback not implemented*)
(*Not implemented g_socket_connection_connect_finish type interface not implemented*)
val get_local_address :
  t -> (Socket_address.t, Error.t structure ptr option) result
val get_remote_address :
  t -> (Socket_address.t, Error.t structure ptr option) result
val get_socket :
  t -> Socket.t
val is_connected :
  t -> bool
