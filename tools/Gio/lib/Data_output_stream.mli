open Ctypes

type t
val t_typ : t typ

(*Not implemented g_data_output_stream_new type object not implemented*)
val get_byte_order:
  t structure ptr -> Data_stream_byte_order.t
(*Not implemented g_data_output_stream_put_byte type object not implemented*)
(*Not implemented g_data_output_stream_put_int16 type object not implemented*)
(*Not implemented g_data_output_stream_put_int32 type object not implemented*)
(*Not implemented g_data_output_stream_put_int64 type object not implemented*)
(*Not implemented g_data_output_stream_put_string type object not implemented*)
(*Not implemented g_data_output_stream_put_uint16 type object not implemented*)
(*Not implemented g_data_output_stream_put_uint32 type object not implemented*)
(*Not implemented g_data_output_stream_put_uint64 type object not implemented*)
val set_byte_order:
  t structure ptr -> Data_stream_byte_order.t -> unit
