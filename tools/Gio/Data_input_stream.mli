open Ctypes

type t
val t_typ : t typ

val create :
  Input_stream.t ptr -> t ptr
val get_byte_order :
  t -> Data_stream_byte_order.t
val get_newline_type :
  t -> Data_stream_newline_type.t
val read_byte :
  t -> Cancellable.t ptr option -> (Unsigned.uint8, Error.t structure ptr option) result
val read_int16 :
  t -> Cancellable.t ptr option -> (int, Error.t structure ptr option) result
val read_int32 :
  t -> Cancellable.t ptr option -> (int32, Error.t structure ptr option) result
val read_int64 :
  t -> Cancellable.t ptr option -> (int64, Error.t structure ptr option) result
(*Not implemented g_data_input_stream_read_line return type C Array type for Types.Array tag not handled*)
(*Not implemented g_data_input_stream_read_line_async type callback not implemented*)
(*Not implemented g_data_input_stream_read_line_finish type interface not implemented*)
(*Not implemented g_data_input_stream_read_line_finish_utf8 type interface not implemented*)
val read_line_utf8 :
  t -> Cancellable.t ptr option -> (string option * Unsigned.uint64, Error.t structure ptr option) result
val read_uint16 :
  t -> Cancellable.t ptr option -> (Unsigned.uint16, Error.t structure ptr option) result
val read_uint32 :
  t -> Cancellable.t ptr option -> (Unsigned.uint32, Error.t structure ptr option) result
val read_uint64 :
  t -> Cancellable.t ptr option -> (Unsigned.uint64, Error.t structure ptr option) result
val read_until :
  t -> string -> Cancellable.t ptr option -> (string option * Unsigned.uint64, Error.t structure ptr option) result
(*Not implemented g_data_input_stream_read_until_async type callback not implemented*)
(*Not implemented g_data_input_stream_read_until_finish type interface not implemented*)
val read_upto :
  t -> string -> int64 -> Cancellable.t ptr option -> (string option * Unsigned.uint64, Error.t structure ptr option) result
(*Not implemented g_data_input_stream_read_upto_async type callback not implemented*)
(*Not implemented g_data_input_stream_read_upto_finish type interface not implemented*)
val set_byte_order :
  t -> Data_stream_byte_order.t -> unit
val set_newline_type :
  t -> Data_stream_newline_type.t -> unit
