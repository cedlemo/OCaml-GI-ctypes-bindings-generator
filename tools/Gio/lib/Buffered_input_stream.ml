open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_buffered_input_stream_new type object not implemented*)
(*Not implemented g_buffered_input_stream_new_sized type object not implemented*)
(*Not implemented g_buffered_input_stream_fill type object not implemented*)
(*Not implemented g_buffered_input_stream_fill_async type object not implemented*)
(*Not implemented g_buffered_input_stream_fill_finish type interface not implemented*)
let get_available =
  foreign "g_buffered_input_stream_get_available" (ptr t_typ @-> returning (uint64_t))
let get_buffer_size =
  foreign "g_buffered_input_stream_get_buffer_size" (ptr t_typ @-> returning (uint64_t))
(*Not implemented g_buffered_input_stream_peek type C Array type for Types.Array tag not implemented*)
(*Not implemented g_buffered_input_stream_peek_buffer return type C Array type for Types.Array tag not handled*)
(*Not implemented g_buffered_input_stream_read_byte type object not implemented*)
let set_buffer_size =
  foreign "g_buffered_input_stream_set_buffer_size" (ptr t_typ @-> uint64_t @-> returning (void))
