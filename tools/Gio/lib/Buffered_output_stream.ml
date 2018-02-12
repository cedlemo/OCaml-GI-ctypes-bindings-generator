open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_buffered_output_stream_new type object not implemented*)
(*Not implemented g_buffered_output_stream_new_sized type object not implemented*)
let get_auto_grow =
  foreign "g_buffered_output_stream_get_auto_grow" (ptr t_typ @-> returning (bool))
let get_buffer_size =
  foreign "g_buffered_output_stream_get_buffer_size" (ptr t_typ @-> returning (uint64_t))
let set_auto_grow =
  foreign "g_buffered_output_stream_set_auto_grow" (ptr t_typ @-> bool @-> returning (void))
let set_buffer_size =
  foreign "g_buffered_output_stream_set_buffer_size" (ptr t_typ @-> uint64_t @-> returning (void))
