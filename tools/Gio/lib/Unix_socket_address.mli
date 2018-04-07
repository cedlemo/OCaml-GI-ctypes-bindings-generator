open Ctypes

type t
val t_typ : t typ

val create :
  string -> Socket_address.t
(*Not implemented g_unix_socket_address_new_abstract type C Array type for Types.Array tag not implemented*)
(*Not implemented g_unix_socket_address_new_with_type type C Array type for Types.Array tag not implemented*)
val abstract_names_supported :
  unit -> bool
val get_address_type :
  t -> Unix_socket_address_type.t
val get_is_abstract :
  t -> bool
val get_path :
  t -> string option
val get_path_len :
  t -> Unsigned.uint64
