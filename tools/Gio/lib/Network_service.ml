open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_network_service_new return type object not handled*)
let get_domain =
  foreign "g_network_service_get_domain" (ptr t_typ @-> returning (string_opt))
let get_protocol =
  foreign "g_network_service_get_protocol" (ptr t_typ @-> returning (string_opt))
let get_scheme =
  foreign "g_network_service_get_scheme" (ptr t_typ @-> returning (string_opt))
let get_service =
  foreign "g_network_service_get_service" (ptr t_typ @-> returning (string_opt))
let set_scheme =
  foreign "g_network_service_set_scheme" (ptr t_typ @-> string @-> returning (void))
