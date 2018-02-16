open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_unix_fd_message_new return type object not handled*)
(*Not implemented g_unix_fd_message_new_with_fd_list type object not implemented*)
let append_fd self fd =
  let append_fd_raw =
    foreign "g_unix_fd_message_append_fd" (ptr t_typ @-> int32_t@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = append_fd_raw self fd err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_unix_fd_message_get_fd_list return type object not handled*)
(*Not implemented g_unix_fd_message_steal_fds return type C Array type for Types.Array tag not handled*)
