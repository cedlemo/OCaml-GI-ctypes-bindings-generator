open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_unix_fd_message_new" (void @-> returning (Socket_control_message.t_typ))
let create_with_fd_list =
  foreign "g_unix_fd_message_new_with_fd_list" (Unix_fdlist.t_typ @-> returning (Socket_control_message.t_typ))
let append_fd self fd =
  let append_fd_raw =
    foreign "g_unix_fd_message_append_fd" (t_typ @-> int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = append_fd_raw self fd err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_fd_list =
  foreign "g_unix_fd_message_get_fd_list" (t_typ @-> returning (Unix_fdlist.t_typ))
(*Not implemented g_unix_fd_message_steal_fds return type C Array type for Types.Array tag not handled*)
