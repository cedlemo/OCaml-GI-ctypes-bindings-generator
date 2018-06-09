open Ctypes

type t
val t_typ : t typ

(*Not implemented g_subprocess_newv type C Array type for Types.Array tag not implemented*)
val communicate :
  t -> Bytes.t structure ptr option -> Cancellable.t -> (bool * Bytes.t structure ptr option * Bytes.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_subprocess_communicate_async type callback not implemented*)
(*Not implemented g_subprocess_communicate_finish type interface not implemented*)
val communicate_utf8 :
  t -> string option -> Cancellable.t -> (bool * string option * string option, Error.t structure ptr option) result
(*Not implemented g_subprocess_communicate_utf8_async type callback not implemented*)
(*Not implemented g_subprocess_communicate_utf8_finish type interface not implemented*)
val force_exit :
  t -> unit
val get_exit_status :
  t -> int32
val get_identifier :
  t -> string option
val get_if_exited :
  t -> bool
val get_if_signaled :
  t -> bool
val get_status :
  t -> int32
val get_stderr_pipe :
  t -> Input_stream.t
val get_stdin_pipe :
  t -> Output_stream.t
val get_stdout_pipe :
  t -> Input_stream.t
val get_successful :
  t -> bool
val get_term_sig :
  t -> int32
val send_signal :
  t -> int32 -> unit
val wait :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_subprocess_wait_async type callback not implemented*)
val wait_check :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_subprocess_wait_check_async type callback not implemented*)
(*Not implemented g_subprocess_wait_check_finish type interface not implemented*)
(*Not implemented g_subprocess_wait_finish type interface not implemented*)
