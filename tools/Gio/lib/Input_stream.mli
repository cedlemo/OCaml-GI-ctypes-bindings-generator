open Ctypes

type t
val t_typ : t typ

val clear_pending:
  t structure ptr -> unit
(*Not implemented g_input_stream_close type object not implemented*)
(*Not implemented g_input_stream_close_async type object not implemented*)
(*Not implemented g_input_stream_close_finish type interface not implemented*)
val has_pending:
  t structure ptr -> bool
val is_closed:
  t structure ptr -> bool
(*Not implemented g_input_stream_read type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all_finish type interface not implemented*)
(*Not implemented g_input_stream_read_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_bytes type object not implemented*)
(*Not implemented g_input_stream_read_bytes_async type object not implemented*)
(*Not implemented g_input_stream_read_bytes_finish type interface not implemented*)
(*Not implemented g_input_stream_read_finish type interface not implemented*)
val set_pending:
  t structure ptr -> (bool, Error.t structure ptr option) result
(*Not implemented g_input_stream_skip type object not implemented*)
(*Not implemented g_input_stream_skip_async type object not implemented*)
(*Not implemented g_input_stream_skip_finish type interface not implemented*)
