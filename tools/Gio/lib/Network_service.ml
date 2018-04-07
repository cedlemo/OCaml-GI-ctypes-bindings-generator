open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_network_service_new" (string @-> string @-> string @-> returning (t_typ))
let get_domain =
  foreign "g_network_service_get_domain" (t_typ @-> returning (string_opt))
let get_protocol =
  foreign "g_network_service_get_protocol" (t_typ @-> returning (string_opt))
let get_scheme =
  foreign "g_network_service_get_scheme" (t_typ @-> returning (string_opt))
let get_service =
  foreign "g_network_service_get_service" (t_typ @-> returning (string_opt))
let set_scheme =
  foreign "g_network_service_set_scheme" (t_typ @-> string @-> returning (void))
