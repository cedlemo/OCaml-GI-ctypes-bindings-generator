open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_inet_address_new_any return type object not handled*)
(*Not implemented g_inet_address_new_from_bytes type C Array type for Types.Array tag not implemented*)
(*Not implemented g_inet_address_new_from_string return type object not handled*)
(*Not implemented g_inet_address_new_loopback return type object not handled*)
(*Not implemented g_inet_address_equal type object not implemented*)
let get_family =
  foreign "g_inet_address_get_family" (ptr t_typ @-> returning (Socket_family.t_view))
let get_is_any =
  foreign "g_inet_address_get_is_any" (ptr t_typ @-> returning (bool))
let get_is_link_local =
  foreign "g_inet_address_get_is_link_local" (ptr t_typ @-> returning (bool))
let get_is_loopback =
  foreign "g_inet_address_get_is_loopback" (ptr t_typ @-> returning (bool))
let get_is_mc_global =
  foreign "g_inet_address_get_is_mc_global" (ptr t_typ @-> returning (bool))
let get_is_mc_link_local =
  foreign "g_inet_address_get_is_mc_link_local" (ptr t_typ @-> returning (bool))
let get_is_mc_node_local =
  foreign "g_inet_address_get_is_mc_node_local" (ptr t_typ @-> returning (bool))
let get_is_mc_org_local =
  foreign "g_inet_address_get_is_mc_org_local" (ptr t_typ @-> returning (bool))
let get_is_mc_site_local =
  foreign "g_inet_address_get_is_mc_site_local" (ptr t_typ @-> returning (bool))
let get_is_multicast =
  foreign "g_inet_address_get_is_multicast" (ptr t_typ @-> returning (bool))
let get_is_site_local =
  foreign "g_inet_address_get_is_site_local" (ptr t_typ @-> returning (bool))
let get_native_size =
  foreign "g_inet_address_get_native_size" (ptr t_typ @-> returning (uint64_t))
let to_string =
  foreign "g_inet_address_to_string" (ptr t_typ @-> returning (string_opt))
