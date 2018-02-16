open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_subprocess_newv type C Array type for Types.Array tag not implemented*)
(*Not implemented g_subprocess_communicate type object not implemented*)
(*Not implemented g_subprocess_communicate_async type object not implemented*)
(*Not implemented g_subprocess_communicate_finish type interface not implemented*)
(*Not implemented g_subprocess_communicate_utf8 type object not implemented*)
(*Not implemented g_subprocess_communicate_utf8_async type object not implemented*)
(*Not implemented g_subprocess_communicate_utf8_finish type interface not implemented*)
let force_exit =
  foreign "g_subprocess_force_exit" (ptr t_typ @-> returning (void))
let get_exit_status =
  foreign "g_subprocess_get_exit_status" (ptr t_typ @-> returning (int32_t))
let get_identifier =
  foreign "g_subprocess_get_identifier" (ptr t_typ @-> returning (string_opt))
let get_if_exited =
  foreign "g_subprocess_get_if_exited" (ptr t_typ @-> returning (bool))
let get_if_signaled =
  foreign "g_subprocess_get_if_signaled" (ptr t_typ @-> returning (bool))
let get_status =
  foreign "g_subprocess_get_status" (ptr t_typ @-> returning (int32_t))
(*Not implemented g_subprocess_get_stderr_pipe return type object not handled*)
(*Not implemented g_subprocess_get_stdin_pipe return type object not handled*)
(*Not implemented g_subprocess_get_stdout_pipe return type object not handled*)
let get_successful =
  foreign "g_subprocess_get_successful" (ptr t_typ @-> returning (bool))
let get_term_sig =
  foreign "g_subprocess_get_term_sig" (ptr t_typ @-> returning (int32_t))
let send_signal =
  foreign "g_subprocess_send_signal" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented g_subprocess_wait type object not implemented*)
(*Not implemented g_subprocess_wait_async type object not implemented*)
(*Not implemented g_subprocess_wait_check type object not implemented*)
(*Not implemented g_subprocess_wait_check_async type object not implemented*)
(*Not implemented g_subprocess_wait_check_finish type interface not implemented*)
(*Not implemented g_subprocess_wait_finish type interface not implemented*)
