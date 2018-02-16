open Ctypes

type t
val t_typ : t typ

(*Not implemented g_inet_socket_address_new type object not implemented*)
(*Not implemented g_inet_socket_address_new_from_string return type object not handled*)
(*Not implemented g_inet_socket_address_get_address return type object not handled*)
val get_flowinfo:
  t structure ptr -> Unsigned.uint32
val get_port:
  t structure ptr -> Unsigned.uint16
val get_scope_id:
  t structure ptr -> Unsigned.uint32
