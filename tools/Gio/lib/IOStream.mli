open Ctypes

type t
val t_typ : t typ

(*Not implemented g_io_stream_splice_finish type interface not implemented*)
val clear_pending:
  t structure ptr -> unit
(*Not implemented g_io_stream_close type object not implemented*)
(*Not implemented g_io_stream_close_async type object not implemented*)
(*Not implemented g_io_stream_close_finish type interface not implemented*)
(*Not implemented g_io_stream_get_input_stream return type object not handled*)
(*Not implemented g_io_stream_get_output_stream return type object not handled*)
val has_pending:
  t structure ptr -> bool
val is_closed:
  t structure ptr -> bool
val set_pending:
  t structure ptr -> (bool, Error.t structure ptr option) result
(*Not implemented g_io_stream_splice_async type object not implemented*)
