open Ctypes

type t
val t_typ : t typ

(*Not implemented g_subprocess_newv type C Array type for Types.Array tag not implemented*)
(*Not implemented g_subprocess_communicate type object not implemented*)
(*Not implemented g_subprocess_communicate_async type object not implemented*)
(*Not implemented g_subprocess_communicate_finish type interface not implemented*)
(*Not implemented g_subprocess_communicate_utf8 type object not implemented*)
(*Not implemented g_subprocess_communicate_utf8_async type object not implemented*)
(*Not implemented g_subprocess_communicate_utf8_finish type interface not implemented*)
val force_exit:
  t structure ptr -> unit
val get_exit_status:
  t structure ptr -> int32
val get_identifier:
  t structure ptr -> string option
val get_if_exited:
  t structure ptr -> bool
val get_if_signaled:
  t structure ptr -> bool
val get_status:
  t structure ptr -> int32
(*Not implemented g_subprocess_get_stderr_pipe return type object not handled*)
(*Not implemented g_subprocess_get_stdin_pipe return type object not handled*)
(*Not implemented g_subprocess_get_stdout_pipe return type object not handled*)
val get_successful:
  t structure ptr -> bool
val get_term_sig:
  t structure ptr -> int32
val send_signal:
  t structure ptr -> int32 -> unit
(*Not implemented g_subprocess_wait type object not implemented*)
(*Not implemented g_subprocess_wait_async type object not implemented*)
(*Not implemented g_subprocess_wait_check type object not implemented*)
(*Not implemented g_subprocess_wait_check_async type object not implemented*)
(*Not implemented g_subprocess_wait_check_finish type interface not implemented*)
(*Not implemented g_subprocess_wait_finish type interface not implemented*)
