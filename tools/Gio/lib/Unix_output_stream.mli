open Ctypes

type t
val t_typ : t typ

(*Not implemented g_unix_output_stream_new return type object not handled*)
val get_close_fd:
  t structure ptr -> bool
val get_fd:
  t structure ptr -> int32
val set_close_fd:
  t structure ptr -> bool -> unit
