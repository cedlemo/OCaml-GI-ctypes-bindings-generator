open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_subprocess_newv type C Array type for Types.Array tag not implemented*)
let communicate self stdin_buf cancellable =
  let communicate_raw =
    foreign "g_subprocess_communicate" (t_typ @-> ptr_opt Bytes.t_typ @-> Cancellable.t_typ @-> ptr (ptr Bytes.t_typ) @-> ptr (ptr Bytes.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let stdout_buf_ptr = allocate (ptr_opt Bytes.t_typ) None in
  let stderr_buf_ptr = allocate (ptr_opt Bytes.t_typ) None in
  let ret = communicate_raw self stdin_buf cancellable stdout_buf_ptr stderr_buf_ptr err_ptr_ptr in
  let get_ret_value () =
    let stdout_buf = !@ stdout_buf_ptr in
  let stderr_buf = !@ stderr_buf_ptr in
    (ret, stdout_buf, stderr_buf)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_subprocess_communicate_async type callback not implemented*)
(*Not implemented g_subprocess_communicate_finish type interface not implemented*)
let communicate_utf8 self stdin_buf cancellable =
  let communicate_utf8_raw =
    foreign "g_subprocess_communicate_utf8" (t_typ @-> string_opt @-> Cancellable.t_typ @-> ptr (string) @-> ptr (string) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let stdout_buf_ptr = allocate string " " in
  let stderr_buf_ptr = allocate string " " in
  let ret = communicate_utf8_raw self stdin_buf cancellable stdout_buf_ptr stderr_buf_ptr err_ptr_ptr in
  let get_ret_value () =
    let stdout_buf = !@ stdout_buf_ptr in
  let stderr_buf = !@ stderr_buf_ptr in
    (ret, stdout_buf, stderr_buf)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_subprocess_communicate_utf8_async type callback not implemented*)
(*Not implemented g_subprocess_communicate_utf8_finish type interface not implemented*)
let force_exit =
  foreign "g_subprocess_force_exit" (t_typ @-> returning (void))
let get_exit_status =
  foreign "g_subprocess_get_exit_status" (t_typ @-> returning (int32_t))
let get_identifier =
  foreign "g_subprocess_get_identifier" (t_typ @-> returning (string_opt))
let get_if_exited =
  foreign "g_subprocess_get_if_exited" (t_typ @-> returning (bool))
let get_if_signaled =
  foreign "g_subprocess_get_if_signaled" (t_typ @-> returning (bool))
let get_status =
  foreign "g_subprocess_get_status" (t_typ @-> returning (int32_t))
let get_stderr_pipe =
  foreign "g_subprocess_get_stderr_pipe" (t_typ @-> returning (Input_stream.t_typ))
let get_stdin_pipe =
  foreign "g_subprocess_get_stdin_pipe" (t_typ @-> returning (Output_stream.t_typ))
let get_stdout_pipe =
  foreign "g_subprocess_get_stdout_pipe" (t_typ @-> returning (Input_stream.t_typ))
let get_successful =
  foreign "g_subprocess_get_successful" (t_typ @-> returning (bool))
let get_term_sig =
  foreign "g_subprocess_get_term_sig" (t_typ @-> returning (int32_t))
let send_signal =
  foreign "g_subprocess_send_signal" (t_typ @-> int32_t @-> returning (void))
let wait self cancellable =
  let wait_raw =
    foreign "g_subprocess_wait" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = wait_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_subprocess_wait_async type callback not implemented*)
let wait_check self cancellable =
  let wait_check_raw =
    foreign "g_subprocess_wait_check" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = wait_check_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_subprocess_wait_check_async type callback not implemented*)
(*Not implemented g_subprocess_wait_check_finish type interface not implemented*)
(*Not implemented g_subprocess_wait_finish type interface not implemented*)
