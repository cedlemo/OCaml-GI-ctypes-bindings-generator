open Ctypes

type t
val t_typ : t typ

(*Not implemented g_buffered_output_stream_new type object not implemented*)
(*Not implemented g_buffered_output_stream_new_sized type object not implemented*)
val get_auto_grow:
  t structure ptr -> bool
val get_buffer_size:
  t structure ptr -> Unsigned.uint64
val set_auto_grow:
  t structure ptr -> bool -> unit
val set_buffer_size:
  t structure ptr -> Unsigned.uint64 -> unit
