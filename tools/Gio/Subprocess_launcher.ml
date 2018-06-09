open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_subprocess_launcher_new" (Subprocess_flags.t_list_view @-> returning (t_typ))
let getenv =
  foreign "g_subprocess_launcher_getenv" (t_typ @-> string @-> returning (string_opt))
let set_cwd =
  foreign "g_subprocess_launcher_set_cwd" (t_typ @-> string @-> returning (void))
(*Not implemented g_subprocess_launcher_set_environ type C Array type for Types.Array tag not implemented*)
let set_flags =
  foreign "g_subprocess_launcher_set_flags" (t_typ @-> Subprocess_flags.t_list_view @-> returning (void))
let set_stderr_file_path =
  foreign "g_subprocess_launcher_set_stderr_file_path" (t_typ @-> string_opt @-> returning (void))
let set_stdin_file_path =
  foreign "g_subprocess_launcher_set_stdin_file_path" (t_typ @-> string @-> returning (void))
let set_stdout_file_path =
  foreign "g_subprocess_launcher_set_stdout_file_path" (t_typ @-> string_opt @-> returning (void))
let setenv =
  foreign "g_subprocess_launcher_setenv" (t_typ @-> string @-> string @-> bool @-> returning (void))
(*Not implemented g_subprocess_launcher_spawnv type C Array type for Types.Array tag not implemented*)
let take_fd =
  foreign "g_subprocess_launcher_take_fd" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let take_stderr_fd =
  foreign "g_subprocess_launcher_take_stderr_fd" (t_typ @-> int32_t @-> returning (void))
let take_stdin_fd =
  foreign "g_subprocess_launcher_take_stdin_fd" (t_typ @-> int32_t @-> returning (void))
let take_stdout_fd =
  foreign "g_subprocess_launcher_take_stdout_fd" (t_typ @-> int32_t @-> returning (void))
let unsetenv =
  foreign "g_subprocess_launcher_unsetenv" (t_typ @-> string @-> returning (void))
