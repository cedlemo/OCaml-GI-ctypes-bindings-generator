open Ctypes

type t
val t_typ : t typ

(*Not implemented g_unix_mount_monitor_new return type object not handled*)
(*Not implemented g_unix_mount_monitor_get return type object not handled*)
val set_rate_limit:
  t structure ptr -> int32 -> unit
