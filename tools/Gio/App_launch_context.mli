open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
(*Not implemented g_app_launch_context_get_display type interface not implemented*)
(*Not implemented g_app_launch_context_get_environment return type C Array type for Types.Array tag not handled*)
(*Not implemented g_app_launch_context_get_startup_notify_id type interface not implemented*)
val launch_failed :
  t -> string -> unit
val setenv :
  t -> string -> string -> unit
val unsetenv :
  t -> string -> unit
