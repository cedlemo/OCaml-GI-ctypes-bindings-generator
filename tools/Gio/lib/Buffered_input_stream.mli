open Ctypes

type t
val t_typ : t typ

(*Not implemented g_buffered_input_stream_new type object not implemented*)
(*Not implemented g_buffered_input_stream_new_sized type object not implemented*)
(*Not implemented g_buffered_input_stream_fill type object not implemented*)
(*Not implemented g_buffered_input_stream_fill_async type object not implemented*)
(*Not implemented g_buffered_input_stream_fill_finish type interface not implemented*)
val get_available:
  t structure ptr -> Unsigned.uint64
val get_buffer_size:
  t structure ptr -> Unsigned.uint64
(*Not implemented g_buffered_input_stream_peek type C Array type for Types.Array tag not implemented*)
(*Not implemented g_buffered_input_stream_peek_buffer return type C Array type for Types.Array tag not handled*)
(*Not implemented g_buffered_input_stream_read_byte type object not implemented*)
val set_buffer_size:
  t structure ptr -> Unsigned.uint64 -> unit
