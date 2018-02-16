open Ctypes

type t
val t_typ : t typ

val cancel:
  t structure ptr -> bool
(*Not implemented g_file_monitor_emit_event type interface not implemented*)
val is_cancelled:
  t structure ptr -> bool
val set_rate_limit:
  t structure ptr -> int32 -> unit
