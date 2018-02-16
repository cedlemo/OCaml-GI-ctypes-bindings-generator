open Ctypes

type t
val t_typ : t typ

(*Not implemented g_filter_output_stream_get_base_stream return type object not handled*)
val get_close_base_stream:
  t structure ptr -> bool
val set_close_base_stream:
  t structure ptr -> bool -> unit
