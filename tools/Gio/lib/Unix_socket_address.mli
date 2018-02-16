open Ctypes

type t
val t_typ : t typ

(*Not implemented g_unix_socket_address_new return type object not handled*)
(*Not implemented g_unix_socket_address_new_abstract type C Array type for Types.Array tag not implemented*)
(*Not implemented g_unix_socket_address_new_with_type type C Array type for Types.Array tag not implemented*)
val abstract_names_supported:
  unit -> bool
val get_address_type:
  t structure ptr -> Unix_socket_address_type.t
val get_is_abstract:
  t structure ptr -> bool
val get_path:
  t structure ptr -> string option
val get_path_len:
  t structure ptr -> Unsigned.uint64
