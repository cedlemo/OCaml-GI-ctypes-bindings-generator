open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_memory_input_stream_new" (void @-> returning (Input_stream.t_typ))
let create_from_bytes =
  foreign "g_memory_input_stream_new_from_bytes" (ptr Bytes.t_typ @-> returning (Input_stream.t_typ))
(*Not implemented g_memory_input_stream_new_from_data type C Array type for Types.Array tag not implemented*)
let add_bytes =
  foreign "g_memory_input_stream_add_bytes" (t_typ @-> ptr Bytes.t_typ @-> returning (void))
(*Not implemented g_memory_input_stream_add_data type C Array type for Types.Array tag not implemented*)
