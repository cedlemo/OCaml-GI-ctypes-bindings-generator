open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_inet_socket_address_new type object not implemented*)
(*Not implemented g_inet_socket_address_new_from_string return type object not handled*)
(*Not implemented g_inet_socket_address_get_address return type object not handled*)
let get_flowinfo =
  foreign "g_inet_socket_address_get_flowinfo" (ptr t_typ @-> returning (uint32_t))
let get_port =
  foreign "g_inet_socket_address_get_port" (ptr t_typ @-> returning (uint16_t))
let get_scope_id =
  foreign "g_inet_socket_address_get_scope_id" (ptr t_typ @-> returning (uint32_t))
