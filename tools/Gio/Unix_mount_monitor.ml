open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_unix_mount_monitor_new" (void @-> returning (ptr t_typ))
let get =
  foreign "g_unix_mount_monitor_get" (void @-> returning (ptr t_typ))
let set_rate_limit =
  foreign "g_unix_mount_monitor_set_rate_limit" (t_typ @-> int32_t @-> returning (void))
