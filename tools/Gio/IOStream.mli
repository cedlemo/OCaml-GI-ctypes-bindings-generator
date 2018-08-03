open Ctypes

type t
val t_typ : t typ

(*Not implemented g_io_stream_splice_finish type interface not implemented*)
val clear_pending :
  t -> unit
val close :
  t -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
(*Not implemented g_io_stream_close_async type callback not implemented*)
(*Not implemented g_io_stream_close_finish type interface not implemented*)
val get_input_stream :
  t -> Input_stream.t ptr
val get_output_stream :
  t -> Output_stream.t ptr
val has_pending :
  t -> bool
val is_closed :
  t -> bool
val set_pending :
  t -> (bool, Error.t structure ptr option) result
(*Not implemented g_io_stream_splice_async type callback not implemented*)
