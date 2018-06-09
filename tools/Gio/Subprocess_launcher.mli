open Ctypes

type t
val t_typ : t typ

val create :
  Subprocess_flags.t_list -> t
val getenv :
  t -> string -> string option
val set_cwd :
  t -> string -> unit
(*Not implemented g_subprocess_launcher_set_environ type C Array type for Types.Array tag not implemented*)
val set_flags :
  t -> Subprocess_flags.t_list -> unit
val set_stderr_file_path :
  t -> string option -> unit
val set_stdin_file_path :
  t -> string -> unit
val set_stdout_file_path :
  t -> string option -> unit
val setenv :
  t -> string -> string -> bool -> unit
(*Not implemented g_subprocess_launcher_spawnv type C Array type for Types.Array tag not implemented*)
val take_fd :
  t -> int32 -> int32 -> unit
val take_stderr_fd :
  t -> int32 -> unit
val take_stdin_fd :
  t -> int32 -> unit
val take_stdout_fd :
  t -> int32 -> unit
val unsetenv :
  t -> string -> unit
