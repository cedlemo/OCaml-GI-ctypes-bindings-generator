open Ctypes

type t
val t_typ : t typ

(*Not implemented g_memory_input_stream_new return type object not handled*)
(*Not implemented g_memory_input_stream_new_from_bytes return type object not handled*)
(*Not implemented g_memory_input_stream_new_from_data type C Array type for Types.Array tag not implemented*)
val add_bytes:
  t structure ptr -> Bytes.t structure ptr -> unit
(*Not implemented g_memory_input_stream_add_data type C Array type for Types.Array tag not implemented*)
