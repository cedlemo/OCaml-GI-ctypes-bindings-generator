open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_service_new return type object not handled*)
val is_active:
  t structure ptr -> bool
val start:
  t structure ptr -> unit
val stop:
  t structure ptr -> unit
