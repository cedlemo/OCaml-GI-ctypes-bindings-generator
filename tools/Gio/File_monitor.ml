open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let cancel =
  foreign "g_file_monitor_cancel" (t_typ @-> returning (bool))
(*Not implemented g_file_monitor_emit_event type interface not implemented*)
let is_cancelled =
  foreign "g_file_monitor_is_cancelled" (t_typ @-> returning (bool))
let set_rate_limit =
  foreign "g_file_monitor_set_rate_limit" (t_typ @-> int32_t @-> returning (void))
