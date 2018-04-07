open Ctypes

type t
val t_typ : t typ

val create_any :
  Socket_family.t -> t
(*Not implemented g_inet_address_new_from_bytes type C Array type for Types.Array tag not implemented*)
val create_from_string :
  string -> t
val create_loopback :
  Socket_family.t -> t
val equal :
  t -> t -> bool
val get_family :
  t -> Socket_family.t
val get_is_any :
  t -> bool
val get_is_link_local :
  t -> bool
val get_is_loopback :
  t -> bool
val get_is_mc_global :
  t -> bool
val get_is_mc_link_local :
  t -> bool
val get_is_mc_node_local :
  t -> bool
val get_is_mc_org_local :
  t -> bool
val get_is_mc_site_local :
  t -> bool
val get_is_multicast :
  t -> bool
val get_is_site_local :
  t -> bool
val get_native_size :
  t -> Unsigned.uint64
val to_string :
  t -> string option
