open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_simple_io_stream_new" (ptr Input_stream.t_typ @-> ptr Output_stream.t_typ @-> returning (ptr IOStream.t_typ))
