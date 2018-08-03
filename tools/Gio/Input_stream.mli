open Ctypes

type t
val t_typ : t typ

val clear_pending :
  t -> unit
val close :
  t -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
(*Not implemented g_input_stream_close_async type callback not implemented*)
(*Not implemented g_input_stream_close_finish type interface not implemented*)
val has_pending :
  t -> bool
val is_closed :
  t -> bool
(*Not implemented g_input_stream_read type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all_finish type interface not implemented*)
(*Not implemented g_input_stream_read_async type C Array type for Types.Array tag not implemented*)
val read_bytes :
  t -> Unsigned.uint64 -> Cancellable.t ptr option -> (Bytes.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_input_stream_read_bytes_async type callback not implemented*)
(*Not implemented g_input_stream_read_bytes_finish type interface not implemented*)
(*Not implemented g_input_stream_read_finish type interface not implemented*)
val set_pending :
  t -> (bool, Error.t structure ptr option) result
val skip :
  t -> Unsigned.uint64 -> Cancellable.t ptr option -> (int64, Error.t structure ptr option) result
(*Not implemented g_input_stream_skip_async type callback not implemented*)
(*Not implemented g_input_stream_skip_finish type interface not implemented*)
