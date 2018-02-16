open Ctypes

type t
val t_typ : t typ

(*Not implemented g_memory_output_stream_new_resizable return type object not handled*)
val get_data:
  t structure ptr -> unit ptr option
val get_data_size:
  t structure ptr -> Unsigned.uint64
val get_size:
  t structure ptr -> Unsigned.uint64
val steal_as_bytes:
  t structure ptr -> Bytes.t structure ptr
val steal_data:
  t structure ptr -> unit ptr option
