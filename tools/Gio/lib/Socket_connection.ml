open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_socket_connection_factory_lookup_type return type gType not handled*)
(*Not implemented g_socket_connection_factory_register_type type gType not implemented*)
(*Not implemented g_socket_connection_connect type object not implemented*)
(*Not implemented g_socket_connection_connect_async type object not implemented*)
(*Not implemented g_socket_connection_connect_finish type interface not implemented*)
(*Not implemented g_socket_connection_get_local_address return type object not handled*)
(*Not implemented g_socket_connection_get_remote_address return type object not handled*)
(*Not implemented g_socket_connection_get_socket return type object not handled*)
let is_connected =
  foreign "g_socket_connection_is_connected" (ptr t_typ @-> returning (bool))
