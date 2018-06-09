open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Input_stream.t
val create_from_bytes :
  Bytes.t structure ptr -> Input_stream.t
(*Not implemented g_memory_input_stream_new_from_data type C Array type for Types.Array tag not implemented*)
val add_bytes :
  t -> Bytes.t structure ptr -> unit
(*Not implemented g_memory_input_stream_add_data type C Array type for Types.Array tag not implemented*)
