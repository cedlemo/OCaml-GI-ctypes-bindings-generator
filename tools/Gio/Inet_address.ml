open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_any =
  foreign "g_inet_address_new_any" (Socket_family.t_view @-> returning (ptr t_typ))
(*Not implemented g_inet_address_new_from_bytes type C Array type for Types.Array tag not implemented*)
let create_from_string =
  foreign "g_inet_address_new_from_string" (string @-> returning (ptr t_typ))
let create_loopback =
  foreign "g_inet_address_new_loopback" (Socket_family.t_view @-> returning (ptr t_typ))
let equal =
  foreign "g_inet_address_equal" (t_typ @-> ptr t_typ @-> returning (bool))
let get_family =
  foreign "g_inet_address_get_family" (t_typ @-> returning (Socket_family.t_view))
let get_is_any =
  foreign "g_inet_address_get_is_any" (t_typ @-> returning (bool))
let get_is_link_local =
  foreign "g_inet_address_get_is_link_local" (t_typ @-> returning (bool))
let get_is_loopback =
  foreign "g_inet_address_get_is_loopback" (t_typ @-> returning (bool))
let get_is_mc_global =
  foreign "g_inet_address_get_is_mc_global" (t_typ @-> returning (bool))
let get_is_mc_link_local =
  foreign "g_inet_address_get_is_mc_link_local" (t_typ @-> returning (bool))
let get_is_mc_node_local =
  foreign "g_inet_address_get_is_mc_node_local" (t_typ @-> returning (bool))
let get_is_mc_org_local =
  foreign "g_inet_address_get_is_mc_org_local" (t_typ @-> returning (bool))
let get_is_mc_site_local =
  foreign "g_inet_address_get_is_mc_site_local" (t_typ @-> returning (bool))
let get_is_multicast =
  foreign "g_inet_address_get_is_multicast" (t_typ @-> returning (bool))
let get_is_site_local =
  foreign "g_inet_address_get_is_site_local" (t_typ @-> returning (bool))
let get_native_size =
  foreign "g_inet_address_get_native_size" (t_typ @-> returning (uint64_t))
let to_string =
  foreign "g_inet_address_to_string" (t_typ @-> returning (string_opt))
