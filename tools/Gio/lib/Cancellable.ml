open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_cancellable_new" (void @-> returning (t_typ))
let get_current =
  foreign "g_cancellable_get_current" (void @-> returning (t_typ))
let cancel =
  foreign "g_cancellable_cancel" (t_typ @-> returning (void))
(*Not implemented g_cancellable_connect type callback not implemented*)
let disconnect =
  foreign "g_cancellable_disconnect" (t_typ @-> uint64_t @-> returning (void))
let get_fd =
  foreign "g_cancellable_get_fd" (t_typ @-> returning (int32_t))
let is_cancelled =
  foreign "g_cancellable_is_cancelled" (t_typ @-> returning (bool))
let make_pollfd =
  foreign "g_cancellable_make_pollfd" (t_typ @-> ptr Poll_fd.t_typ @-> returning (bool))
let pop_current =
  foreign "g_cancellable_pop_current" (t_typ @-> returning (void))
let push_current =
  foreign "g_cancellable_push_current" (t_typ @-> returning (void))
let release_fd =
  foreign "g_cancellable_release_fd" (t_typ @-> returning (void))
let reset =
  foreign "g_cancellable_reset" (t_typ @-> returning (void))
let set_error_if_cancelled self =
  let set_error_if_cancelled_raw =
    foreign "g_cancellable_set_error_if_cancelled" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_error_if_cancelled_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
