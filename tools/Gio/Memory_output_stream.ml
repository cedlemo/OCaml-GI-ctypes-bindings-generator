open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_resizable =
  foreign "g_memory_output_stream_new_resizable" (void @-> returning (Output_stream.t_typ))
let get_data =
  foreign "g_memory_output_stream_get_data" (t_typ @-> returning (ptr_opt void))
let get_data_size =
  foreign "g_memory_output_stream_get_data_size" (t_typ @-> returning (uint64_t))
let get_size =
  foreign "g_memory_output_stream_get_size" (t_typ @-> returning (uint64_t))
let steal_as_bytes =
  foreign "g_memory_output_stream_steal_as_bytes" (t_typ @-> returning (ptr Bytes.t_typ))
let steal_data =
  foreign "g_memory_output_stream_steal_data" (t_typ @-> returning (ptr_opt void))
