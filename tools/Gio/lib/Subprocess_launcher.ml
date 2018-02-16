open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_subprocess_launcher_new return type object not handled*)
let getenv =
  foreign "g_subprocess_launcher_getenv" (ptr t_typ @-> string @-> returning (string_opt))
(*Not implemented g_subprocess_launcher_set_child_setup type callback not implemented*)
let set_cwd =
  foreign "g_subprocess_launcher_set_cwd" (ptr t_typ @-> string @-> returning (void))
(*Not implemented g_subprocess_launcher_set_environ type C Array type for Types.Array tag not implemented*)
let set_flags =
  foreign "g_subprocess_launcher_set_flags" (ptr t_typ @-> Subprocess_flags.t_list_view @-> returning (void))
let set_stderr_file_path =
  foreign "g_subprocess_launcher_set_stderr_file_path" (ptr t_typ @-> string_opt @-> returning (void))
let set_stdin_file_path =
  foreign "g_subprocess_launcher_set_stdin_file_path" (ptr t_typ @-> string @-> returning (void))
let set_stdout_file_path =
  foreign "g_subprocess_launcher_set_stdout_file_path" (ptr t_typ @-> string_opt @-> returning (void))
let setenv =
  foreign "g_subprocess_launcher_setenv" (ptr t_typ @-> string @-> string @-> bool @-> returning (void))
(*Not implemented g_subprocess_launcher_spawnv type C Array type for Types.Array tag not implemented*)
let take_fd =
  foreign "g_subprocess_launcher_take_fd" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let take_stderr_fd =
  foreign "g_subprocess_launcher_take_stderr_fd" (ptr t_typ @-> int32_t @-> returning (void))
let take_stdin_fd =
  foreign "g_subprocess_launcher_take_stdin_fd" (ptr t_typ @-> int32_t @-> returning (void))
let take_stdout_fd =
  foreign "g_subprocess_launcher_take_stdout_fd" (ptr t_typ @-> int32_t @-> returning (void))
let unsetenv =
  foreign "g_subprocess_launcher_unsetenv" (ptr t_typ @-> string @-> returning (void))
