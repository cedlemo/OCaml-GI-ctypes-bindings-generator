open Ctypes

type t
val t_typ : t typ

(*Not implemented g_network_address_new return type object not handled*)
(*Not implemented g_network_address_new_loopback return type object not handled*)
(*Not implemented g_network_address_parse return type object not handled*)
(*Not implemented g_network_address_parse_uri return type object not handled*)
val get_hostname:
  t structure ptr -> string option
val get_port:
  t structure ptr -> Unsigned.uint16
val get_scheme:
  t structure ptr -> string option
