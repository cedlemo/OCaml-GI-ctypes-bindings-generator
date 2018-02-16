open Ctypes

type t
val t_typ : t typ

(*Not implemented g_inet_address_mask_new type object not implemented*)
(*Not implemented g_inet_address_mask_new_from_string return type object not handled*)
(*Not implemented g_inet_address_mask_equal type object not implemented*)
(*Not implemented g_inet_address_mask_get_address return type object not handled*)
val get_family:
  t structure ptr -> Socket_family.t
val get_length:
  t structure ptr -> Unsigned.uint32
(*Not implemented g_inet_address_mask_matches type object not implemented*)
val to_string:
  t structure ptr -> string option
