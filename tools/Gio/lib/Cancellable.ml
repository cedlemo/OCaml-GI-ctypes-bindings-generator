open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_cancellable_new return type object not handled*)
(*Not implemented g_cancellable_get_current return type object not handled*)
let cancel =
  foreign "g_cancellable_cancel" (ptr t_typ @-> returning (void))
(*Not implemented g_cancellable_connect type callback not implemented*)
let disconnect =
  foreign "g_cancellable_disconnect" (ptr t_typ @-> uint64_t @-> returning (void))
let get_fd =
  foreign "g_cancellable_get_fd" (ptr t_typ @-> returning (int32_t))
let is_cancelled =
  foreign "g_cancellable_is_cancelled" (ptr t_typ @-> returning (bool))
let make_pollfd =
  foreign "g_cancellable_make_pollfd" (ptr t_typ @-> ptr Poll_fd.t_typ @-> returning (bool))
let pop_current =
  foreign "g_cancellable_pop_current" (ptr t_typ @-> returning (void))
let push_current =
  foreign "g_cancellable_push_current" (ptr t_typ @-> returning (void))
let release_fd =
  foreign "g_cancellable_release_fd" (ptr t_typ @-> returning (void))
let reset =
  foreign "g_cancellable_reset" (ptr t_typ @-> returning (void))
let set_error_if_cancelled self =
  let set_error_if_cancelled_raw =
    foreign "g_cancellable_set_error_if_cancelled" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = set_error_if_cancelled_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
