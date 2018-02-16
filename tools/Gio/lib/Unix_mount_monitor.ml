open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_unix_mount_monitor_new return type object not handled*)
(*Not implemented g_unix_mount_monitor_get return type object not handled*)
let set_rate_limit =
  foreign "g_unix_mount_monitor_set_rate_limit" (ptr t_typ @-> int32_t @-> returning (void))
