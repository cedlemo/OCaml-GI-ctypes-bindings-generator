open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_inet_socket_address_new" (Inet_address.t_typ @-> uint16_t @-> returning (Socket_address.t_typ))
let create_from_string =
  foreign "g_inet_socket_address_new_from_string" (string @-> uint32_t @-> returning (Socket_address.t_typ))
let get_address =
  foreign "g_inet_socket_address_get_address" (t_typ @-> returning (Inet_address.t_typ))
let get_flowinfo =
  foreign "g_inet_socket_address_get_flowinfo" (t_typ @-> returning (uint32_t))
let get_port =
  foreign "g_inet_socket_address_get_port" (t_typ @-> returning (uint16_t))
let get_scope_id =
  foreign "g_inet_socket_address_get_scope_id" (t_typ @-> returning (uint32_t))
