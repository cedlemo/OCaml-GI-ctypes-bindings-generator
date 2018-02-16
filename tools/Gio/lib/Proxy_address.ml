open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_proxy_address_new type object not implemented*)
let get_destination_hostname =
  foreign "g_proxy_address_get_destination_hostname" (ptr t_typ @-> returning (string_opt))
let get_destination_port =
  foreign "g_proxy_address_get_destination_port" (ptr t_typ @-> returning (uint16_t))
let get_destination_protocol =
  foreign "g_proxy_address_get_destination_protocol" (ptr t_typ @-> returning (string_opt))
let get_password =
  foreign "g_proxy_address_get_password" (ptr t_typ @-> returning (string_opt))
let get_protocol =
  foreign "g_proxy_address_get_protocol" (ptr t_typ @-> returning (string_opt))
let get_uri =
  foreign "g_proxy_address_get_uri" (ptr t_typ @-> returning (string_opt))
let get_username =
  foreign "g_proxy_address_get_username" (ptr t_typ @-> returning (string_opt))
