open Ctypes

type t
val t_typ : t typ

(*Not implemented g_subprocess_launcher_new return type object not handled*)
val getenv:
  t structure ptr -> string -> string option
(*Not implemented g_subprocess_launcher_set_child_setup type callback not implemented*)
val set_cwd:
  t structure ptr -> string -> unit
(*Not implemented g_subprocess_launcher_set_environ type C Array type for Types.Array tag not implemented*)
val set_flags:
  t structure ptr -> Subprocess_flags.t_list -> unit
val set_stderr_file_path:
  t structure ptr -> string option -> unit
val set_stdin_file_path:
  t structure ptr -> string -> unit
val set_stdout_file_path:
  t structure ptr -> string option -> unit
val setenv:
  t structure ptr -> string -> string -> bool -> unit
(*Not implemented g_subprocess_launcher_spawnv type C Array type for Types.Array tag not implemented*)
val take_fd:
  t structure ptr -> int32 -> int32 -> unit
val take_stderr_fd:
  t structure ptr -> int32 -> unit
val take_stdin_fd:
  t structure ptr -> int32 -> unit
val take_stdout_fd:
  t structure ptr -> int32 -> unit
val unsetenv:
  t structure ptr -> string -> unit
