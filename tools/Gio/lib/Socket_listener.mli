open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_listener_new return type object not handled*)
(*Not implemented g_socket_listener_accept type object not implemented*)
(*Not implemented g_socket_listener_accept_async type object not implemented*)
(*Not implemented g_socket_listener_accept_finish type interface not implemented*)
(*Not implemented g_socket_listener_accept_socket type object not implemented*)
(*Not implemented g_socket_listener_accept_socket_async type object not implemented*)
(*Not implemented g_socket_listener_accept_socket_finish type interface not implemented*)
(*Not implemented g_socket_listener_add_address type object not implemented*)
(*Not implemented g_socket_listener_add_any_inet_port type object not implemented*)
(*Not implemented g_socket_listener_add_inet_port type object not implemented*)
(*Not implemented g_socket_listener_add_socket type object not implemented*)
val close:
  t structure ptr -> unit
val set_backlog:
  t structure ptr -> int32 -> unit
