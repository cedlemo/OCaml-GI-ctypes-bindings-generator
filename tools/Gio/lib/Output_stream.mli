open Ctypes

type t
val t_typ : t typ

val clear_pending :
  t -> unit
val close :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_output_stream_close_async type callback not implemented*)
(*Not implemented g_output_stream_close_finish type interface not implemented*)
val flush :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_output_stream_flush_async type callback not implemented*)
(*Not implemented g_output_stream_flush_finish type interface not implemented*)
val has_pending :
  t -> bool
val is_closed :
  t -> bool
val is_closing :
  t -> bool
val set_pending :
  t -> (bool, Error.t structure ptr option) result
val splice :
  t -> Input_stream.t -> Output_stream_splice_flags.t_list -> Cancellable.t -> (int64, Error.t structure ptr option) result
(*Not implemented g_output_stream_splice_async type callback not implemented*)
(*Not implemented g_output_stream_splice_finish type interface not implemented*)
(*Not implemented g_output_stream_write type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_finish type interface not implemented*)
(*Not implemented g_output_stream_write_async type C Array type for Types.Array tag not implemented*)
val write_bytes :
  t -> Bytes.t structure ptr -> Cancellable.t -> (int64, Error.t structure ptr option) result
(*Not implemented g_output_stream_write_bytes_async type callback not implemented*)
(*Not implemented g_output_stream_write_bytes_finish type interface not implemented*)
(*Not implemented g_output_stream_write_finish type interface not implemented*)
