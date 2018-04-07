open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_simple_io_stream_new" (Input_stream.t_typ @-> Output_stream.t_typ @-> returning (IOStream.t_typ))
