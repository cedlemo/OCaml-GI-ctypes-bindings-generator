open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_threaded_socket_service_new" (int32_t @-> returning (ptr Socket_service.t_typ))
