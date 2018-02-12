open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_data_input_stream_new type object not implemented*)
let get_byte_order =
  foreign "g_data_input_stream_get_byte_order" (ptr t_typ @-> returning (Data_stream_byte_order.t_view))
let get_newline_type =
  foreign "g_data_input_stream_get_newline_type" (ptr t_typ @-> returning (Data_stream_newline_type.t_view))
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
let set_byte_order =
  foreign "g_data_input_stream_set_byte_order" (ptr t_typ @-> Data_stream_byte_order.t_view @-> returning (void))
let set_newline_type =
  foreign "g_data_input_stream_set_newline_type" (ptr t_typ @-> Data_stream_newline_type.t_view @-> returning (void))
