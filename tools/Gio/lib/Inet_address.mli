open Ctypes

type t
val t_typ : t typ

(*Not implemented g_inet_address_new_any return type object not handled*)
(*Not implemented g_inet_address_new_from_bytes type C Array type for Types.Array tag not implemented*)
(*Not implemented g_inet_address_new_from_string return type object not handled*)
(*Not implemented g_inet_address_new_loopback return type object not handled*)
(*Not implemented g_inet_address_equal type object not implemented*)
val get_family:
  t structure ptr -> Socket_family.t
val get_is_any:
  t structure ptr -> bool
val get_is_link_local:
  t structure ptr -> bool
val get_is_loopback:
  t structure ptr -> bool
val get_is_mc_global:
  t structure ptr -> bool
val get_is_mc_link_local:
  t structure ptr -> bool
val get_is_mc_node_local:
  t structure ptr -> bool
val get_is_mc_org_local:
  t structure ptr -> bool
val get_is_mc_site_local:
  t structure ptr -> bool
val get_is_multicast:
  t structure ptr -> bool
val get_is_site_local:
  t structure ptr -> bool
val get_native_size:
  t structure ptr -> Unsigned.uint64
val to_string:
  t structure ptr -> string option
