open Ctypes

type t
val t_typ : t typ

val cancel :
  t -> bool
(*Not implemented g_file_monitor_emit_event type interface not implemented*)
val is_cancelled :
  t -> bool
val set_rate_limit :
  t -> int32 -> unit
