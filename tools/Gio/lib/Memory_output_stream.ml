open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_memory_output_stream_new_resizable return type object not handled*)
let get_data =
  foreign "g_memory_output_stream_get_data" (ptr t_typ @-> returning (ptr_opt void))
let get_data_size =
  foreign "g_memory_output_stream_get_data_size" (ptr t_typ @-> returning (uint64_t))
let get_size =
  foreign "g_memory_output_stream_get_size" (ptr t_typ @-> returning (uint64_t))
let steal_as_bytes =
  foreign "g_memory_output_stream_steal_as_bytes" (ptr t_typ @-> returning (ptr Bytes.t_typ))
let steal_data =
  foreign "g_memory_output_stream_steal_data" (ptr t_typ @-> returning (ptr_opt void))
