open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val accept :
  t -> Cancellable.t -> (Socket_connection.t * Object.t, Error.t structure ptr option) result
(*Not implemented g_socket_listener_accept_async type callback not implemented*)
(*Not implemented g_socket_listener_accept_finish type interface not implemented*)
val accept_socket :
  t -> Cancellable.t -> (Socket.t * Object.t, Error.t structure ptr option) result
(*Not implemented g_socket_listener_accept_socket_async type callback not implemented*)
(*Not implemented g_socket_listener_accept_socket_finish type interface not implemented*)
val add_address :
  t -> Socket_address.t -> Socket_type.t -> Socket_protocol.t -> Object.t -> (bool * Socket_address.t, Error.t structure ptr option) result
val add_any_inet_port :
  t -> Object.t -> (Unsigned.uint16, Error.t structure ptr option) result
val add_inet_port :
  t -> Unsigned.uint16 -> Object.t -> (bool, Error.t structure ptr option) result
val add_socket :
  t -> Socket.t -> Object.t -> (bool, Error.t structure ptr option) result
val close :
  t -> unit
val set_backlog :
  t -> int32 -> unit
