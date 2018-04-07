open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_tcp_wrapper_connection_new" (IOStream.t_typ @-> Socket.t_typ @-> returning (Socket_connection.t_typ))
let get_base_io_stream =
  foreign "g_tcp_wrapper_connection_get_base_io_stream" (t_typ @-> returning (IOStream.t_typ))
