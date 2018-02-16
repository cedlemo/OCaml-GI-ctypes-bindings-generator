open Ctypes

type t
val t_typ : t typ

(*Not implemented g_proxy_address_new type object not implemented*)
val get_destination_hostname:
  t structure ptr -> string option
val get_destination_port:
  t structure ptr -> Unsigned.uint16
val get_destination_protocol:
  t structure ptr -> string option
val get_password:
  t structure ptr -> string option
val get_protocol:
  t structure ptr -> string option
val get_uri:
  t structure ptr -> string option
val get_username:
  t structure ptr -> string option
