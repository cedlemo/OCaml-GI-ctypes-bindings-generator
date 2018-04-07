open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_buffered_output_stream_new" (Output_stream.t_typ @-> returning (Output_stream.t_typ))
let create_sized =
  foreign "g_buffered_output_stream_new_sized" (Output_stream.t_typ @-> uint64_t @-> returning (Output_stream.t_typ))
let get_auto_grow =
  foreign "g_buffered_output_stream_get_auto_grow" (t_typ @-> returning (bool))
let get_buffer_size =
  foreign "g_buffered_output_stream_get_buffer_size" (t_typ @-> returning (uint64_t))
let set_auto_grow =
  foreign "g_buffered_output_stream_set_auto_grow" (t_typ @-> bool @-> returning (void))
let set_buffer_size =
  foreign "g_buffered_output_stream_set_buffer_size" (t_typ @-> uint64_t @-> returning (void))
