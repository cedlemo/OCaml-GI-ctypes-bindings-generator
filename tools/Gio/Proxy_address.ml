open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_proxy_address_new" (ptr Inet_address.t_typ @-> uint16_t @-> string @-> string @-> uint16_t @-> string_opt @-> string_opt @-> returning (ptr Socket_address.t_typ))
let get_destination_hostname =
  foreign "g_proxy_address_get_destination_hostname" (t_typ @-> returning (string_opt))
let get_destination_port =
  foreign "g_proxy_address_get_destination_port" (t_typ @-> returning (uint16_t))
let get_destination_protocol =
  foreign "g_proxy_address_get_destination_protocol" (t_typ @-> returning (string_opt))
let get_password =
  foreign "g_proxy_address_get_password" (t_typ @-> returning (string_opt))
let get_protocol =
  foreign "g_proxy_address_get_protocol" (t_typ @-> returning (string_opt))
let get_uri =
  foreign "g_proxy_address_get_uri" (t_typ @-> returning (string_opt))
let get_username =
  foreign "g_proxy_address_get_username" (t_typ @-> returning (string_opt))
