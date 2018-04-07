open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_graceful_disconnect =
  foreign "g_tcp_connection_get_graceful_disconnect" (t_typ @-> returning (bool))
let set_graceful_disconnect =
  foreign "g_tcp_connection_set_graceful_disconnect" (t_typ @-> bool @-> returning (void))
