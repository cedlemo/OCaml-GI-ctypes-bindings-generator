open Ctypes

type t
val t_typ : t typ

(*Not implemented g_app_launch_context_new return type object not handled*)
(*Not implemented g_app_launch_context_get_display type interface not implemented*)
(*Not implemented g_app_launch_context_get_environment return type C Array type for Types.Array tag not handled*)
(*Not implemented g_app_launch_context_get_startup_notify_id type interface not implemented*)
val launch_failed:
  t structure ptr -> string -> unit
val setenv:
  t structure ptr -> string -> string -> unit
val unsetenv:
  t structure ptr -> string -> unit
