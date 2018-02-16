open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_filter_output_stream_get_base_stream return type object not handled*)
let get_close_base_stream =
  foreign "g_filter_output_stream_get_close_base_stream" (ptr t_typ @-> returning (bool))
let set_close_base_stream =
  foreign "g_filter_output_stream_set_close_base_stream" (ptr t_typ @-> bool @-> returning (void))
