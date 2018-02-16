open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_socket_service_new return type object not handled*)
let is_active =
  foreign "g_socket_service_is_active" (ptr t_typ @-> returning (bool))
let start =
  foreign "g_socket_service_start" (ptr t_typ @-> returning (void))
let stop =
  foreign "g_socket_service_stop" (ptr t_typ @-> returning (void))
