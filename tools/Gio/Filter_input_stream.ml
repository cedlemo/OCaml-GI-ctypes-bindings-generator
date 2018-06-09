open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_base_stream =
  foreign "g_filter_input_stream_get_base_stream" (t_typ @-> returning (Input_stream.t_typ))
let get_close_base_stream =
  foreign "g_filter_input_stream_get_close_base_stream" (t_typ @-> returning (bool))
let set_close_base_stream =
  foreign "g_filter_input_stream_set_close_base_stream" (t_typ @-> bool @-> returning (void))
