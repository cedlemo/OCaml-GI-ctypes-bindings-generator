open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_address_new_from_native return type object not handled*)
val get_family:
  t structure ptr -> Socket_family.t
val get_native_size:
  t structure ptr -> int64
val to_native:
  t structure ptr -> unit ptr option -> Unsigned.uint64 -> (bool, Error.t structure ptr option) result
