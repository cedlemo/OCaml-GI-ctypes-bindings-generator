open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_data_output_stream_new type object not implemented*)
let get_byte_order =
  foreign "g_data_output_stream_get_byte_order" (ptr t_typ @-> returning (Data_stream_byte_order.t_view))
(*Not implemented g_data_output_stream_put_byte type object not implemented*)
(*Not implemented g_data_output_stream_put_int16 type object not implemented*)
(*Not implemented g_data_output_stream_put_int32 type object not implemented*)
(*Not implemented g_data_output_stream_put_int64 type object not implemented*)
(*Not implemented g_data_output_stream_put_string type object not implemented*)
(*Not implemented g_data_output_stream_put_uint16 type object not implemented*)
(*Not implemented g_data_output_stream_put_uint32 type object not implemented*)
(*Not implemented g_data_output_stream_put_uint64 type object not implemented*)
let set_byte_order =
  foreign "g_data_output_stream_set_byte_order" (ptr t_typ @-> Data_stream_byte_order.t_view @-> returning (void))
