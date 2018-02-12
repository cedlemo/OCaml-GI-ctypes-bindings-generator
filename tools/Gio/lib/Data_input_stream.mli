open Ctypes

type t
val t_typ : t typ

(*Not implemented g_data_input_stream_new type object not implemented*)
val get_byte_order:
  t structure ptr -> Data_stream_byte_order.t
val get_newline_type:
  t structure ptr -> Data_stream_newline_type.t
(*Not implemented g_data_input_stream_read_byte type object not implemented*)
(*Not implemented g_data_input_stream_read_int16 type object not implemented*)
(*Not implemented g_data_input_stream_read_int32 type object not implemented*)
(*Not implemented g_data_input_stream_read_int64 type object not implemented*)
(*Not implemented g_data_input_stream_read_line type object not implemented*)
(*Not implemented g_data_input_stream_read_line_async type object not implemented*)
(*Not implemented g_data_input_stream_read_line_finish type interface not implemented*)
(*Not implemented g_data_input_stream_read_line_finish_utf8 type interface not implemented*)
(*Not implemented g_data_input_stream_read_line_utf8 type object not implemented*)
(*Not implemented g_data_input_stream_read_uint16 type object not implemented*)
(*Not implemented g_data_input_stream_read_uint32 type object not implemented*)
(*Not implemented g_data_input_stream_read_uint64 type object not implemented*)
(*Not implemented g_data_input_stream_read_until type object not implemented*)
(*Not implemented g_data_input_stream_read_until_async type object not implemented*)
(*Not implemented g_data_input_stream_read_until_finish type interface not implemented*)
(*Not implemented g_data_input_stream_read_upto type object not implemented*)
(*Not implemented g_data_input_stream_read_upto_async type object not implemented*)
(*Not implemented g_data_input_stream_read_upto_finish type interface not implemented*)
val set_byte_order:
  t structure ptr -> Data_stream_byte_order.t -> unit
val set_newline_type:
  t structure ptr -> Data_stream_newline_type.t -> unit
