open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_memory_input_stream_new return type object not handled*)
(*Not implemented g_memory_input_stream_new_from_bytes return type object not handled*)
(*Not implemented g_memory_input_stream_new_from_data type C Array type for Types.Array tag not implemented*)
let add_bytes =
  foreign "g_memory_input_stream_add_bytes" (ptr t_typ @-> ptr Bytes.t_typ @-> returning (void))
(*Not implemented g_memory_input_stream_add_data type C Array type for Types.Array tag not implemented*)
