open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_app_launch_context_new return type object not handled*)
(*Not implemented g_app_launch_context_get_display type interface not implemented*)
(*Not implemented g_app_launch_context_get_environment return type C Array type for Types.Array tag not handled*)
(*Not implemented g_app_launch_context_get_startup_notify_id type interface not implemented*)
let launch_failed =
  foreign "g_app_launch_context_launch_failed" (ptr t_typ @-> string @-> returning (void))
let setenv =
  foreign "g_app_launch_context_setenv" (ptr t_typ @-> string @-> string @-> returning (void))
let unsetenv =
  foreign "g_app_launch_context_unsetenv" (ptr t_typ @-> string @-> returning (void))
