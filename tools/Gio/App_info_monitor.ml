open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get =
  foreign "g_app_info_monitor_get" (void @-> returning (t_typ))
