open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val accept :
  t -> Cancellable.t ptr option -> (Socket_connection.t ptr option * Object.t ptr option, Error.t structure ptr option) result
(*Not implemented g_socket_listener_accept_async type callback not implemented*)
(*Not implemented g_socket_listener_accept_finish type interface not implemented*)
val accept_socket :
  t -> Cancellable.t ptr option -> (Socket.t ptr option * Object.t ptr option, Error.t structure ptr option) result
(*Not implemented g_socket_listener_accept_socket_async type callback not implemented*)
(*Not implemented g_socket_listener_accept_socket_finish type interface not implemented*)
val add_address :
  t -> Socket_address.t ptr -> Socket_type.t -> Socket_protocol.t -> Object.t ptr option -> (bool * Socket_address.t ptr, Error.t structure ptr option) result
val add_any_inet_port :
  t -> Object.t ptr option -> (Unsigned.uint16, Error.t structure ptr option) result
val add_inet_port :
  t -> Unsigned.uint16 -> Object.t ptr option -> (bool, Error.t structure ptr option) result
val add_socket :
  t -> Socket.t ptr -> Object.t ptr option -> (bool, Error.t structure ptr option) result
val close :
  t -> unit
val set_backlog :
  t -> int32 -> unit
