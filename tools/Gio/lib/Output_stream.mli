open Ctypes

type t
val t_typ : t typ

val clear_pending:
  t structure ptr -> unit
(*Not implemented g_output_stream_close type object not implemented*)
(*Not implemented g_output_stream_close_async type object not implemented*)
(*Not implemented g_output_stream_close_finish type interface not implemented*)
(*Not implemented g_output_stream_flush type object not implemented*)
(*Not implemented g_output_stream_flush_async type object not implemented*)
(*Not implemented g_output_stream_flush_finish type interface not implemented*)
val has_pending:
  t structure ptr -> bool
val is_closed:
  t structure ptr -> bool
val is_closing:
  t structure ptr -> bool
val set_pending:
  t structure ptr -> (bool, Error.t structure ptr option) result
(*Not implemented g_output_stream_splice type object not implemented*)
(*Not implemented g_output_stream_splice_async type object not implemented*)
(*Not implemented g_output_stream_splice_finish type interface not implemented*)
(*Not implemented g_output_stream_write type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_finish type interface not implemented*)
(*Not implemented g_output_stream_write_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_bytes type object not implemented*)
(*Not implemented g_output_stream_write_bytes_async type object not implemented*)
(*Not implemented g_output_stream_write_bytes_finish type interface not implemented*)
(*Not implemented g_output_stream_write_finish type interface not implemented*)
