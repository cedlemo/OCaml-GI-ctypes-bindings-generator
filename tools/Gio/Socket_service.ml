open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_socket_service_new" (void @-> returning (ptr t_typ))
let is_active =
  foreign "g_socket_service_is_active" (t_typ @-> returning (bool))
let start =
  foreign "g_socket_service_start" (t_typ @-> returning (void))
let stop =
  foreign "g_socket_service_stop" (t_typ @-> returning (void))
