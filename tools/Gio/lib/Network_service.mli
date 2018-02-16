open Ctypes

type t
val t_typ : t typ

(*Not implemented g_network_service_new return type object not handled*)
val get_domain:
  t structure ptr -> string option
val get_protocol:
  t structure ptr -> string option
val get_scheme:
  t structure ptr -> string option
val get_service:
  t structure ptr -> string option
val set_scheme:
  t structure ptr -> string -> unit
