open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_network_address_new return type object not handled*)
(*Not implemented g_network_address_new_loopback return type object not handled*)
(*Not implemented g_network_address_parse return type object not handled*)
(*Not implemented g_network_address_parse_uri return type object not handled*)
let get_hostname =
  foreign "g_network_address_get_hostname" (ptr t_typ @-> returning (string_opt))
let get_port =
  foreign "g_network_address_get_port" (ptr t_typ @-> returning (uint16_t))
let get_scheme =
  foreign "g_network_address_get_scheme" (ptr t_typ @-> returning (string_opt))
