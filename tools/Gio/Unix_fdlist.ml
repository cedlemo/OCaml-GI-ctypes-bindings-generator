open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_unix_fd_list_new" (void @-> returning (ptr t_typ))
(*Not implemented g_unix_fd_list_new_from_array type C Array type for Types.Array tag not implemented*)
let append self fd =
  let append_raw =
    foreign "g_unix_fd_list_append" (t_typ @-> int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = append_raw self fd err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get self index_ =
  let get_raw =
    foreign "g_unix_fd_list_get" (t_typ @-> int32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_raw self index_ err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_length =
  foreign "g_unix_fd_list_get_length" (t_typ @-> returning (int32_t))
(*Not implemented g_unix_fd_list_peek_fds return type C Array type for Types.Array tag not handled*)
(*Not implemented g_unix_fd_list_steal_fds return type C Array type for Types.Array tag not handled*)
