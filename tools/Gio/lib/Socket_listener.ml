open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

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
let close =
  foreign "g_socket_listener_close" (ptr t_typ @-> returning (void))
let set_backlog =
  foreign "g_socket_listener_set_backlog" (ptr t_typ @-> int32_t @-> returning (void))
