open Ctypes

type t
val t_typ : t typ

val create :
  Input_stream.t -> Input_stream.t
val create_sized :
  Input_stream.t -> Unsigned.uint64 -> Input_stream.t
val fill :
  t -> int64 -> Cancellable.t -> (int64, Error.t structure ptr option) result
(*Not implemented g_buffered_input_stream_fill_async type callback not implemented*)
(*Not implemented g_buffered_input_stream_fill_finish type interface not implemented*)
val get_available :
  t -> Unsigned.uint64
val get_buffer_size :
  t -> Unsigned.uint64
(*Not implemented g_buffered_input_stream_peek type C Array type for Types.Array tag not implemented*)
(*Not implemented g_buffered_input_stream_peek_buffer return type C Array type for Types.Array tag not handled*)
val read_byte :
  t -> Cancellable.t -> (int32, Error.t structure ptr option) result
val set_buffer_size :
  t -> Unsigned.uint64 -> unit
