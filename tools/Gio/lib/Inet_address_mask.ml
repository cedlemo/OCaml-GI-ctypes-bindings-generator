open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_inet_address_mask_new type object not implemented*)
(*Not implemented g_inet_address_mask_new_from_string return type object not handled*)
(*Not implemented g_inet_address_mask_equal type object not implemented*)
(*Not implemented g_inet_address_mask_get_address return type object not handled*)
let get_family =
  foreign "g_inet_address_mask_get_family" (ptr t_typ @-> returning (Socket_family.t_view))
let get_length =
  foreign "g_inet_address_mask_get_length" (ptr t_typ @-> returning (uint32_t))
(*Not implemented g_inet_address_mask_matches type object not implemented*)
let to_string =
  foreign "g_inet_address_mask_to_string" (ptr t_typ @-> returning (string_opt))
