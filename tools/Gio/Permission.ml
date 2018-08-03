open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let acquire self cancellable =
  let acquire_raw =
    foreign "g_permission_acquire" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = acquire_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_permission_acquire_async type callback not implemented*)
(*Not implemented g_permission_acquire_finish type interface not implemented*)
let get_allowed =
  foreign "g_permission_get_allowed" (t_typ @-> returning (bool))
let get_can_acquire =
  foreign "g_permission_get_can_acquire" (t_typ @-> returning (bool))
let get_can_release =
  foreign "g_permission_get_can_release" (t_typ @-> returning (bool))
let impl_update =
  foreign "g_permission_impl_update" (t_typ @-> bool @-> bool @-> bool @-> returning (void))
let release self cancellable =
  let release_raw =
    foreign "g_permission_release" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = release_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_permission_release_async type callback not implemented*)
(*Not implemented g_permission_release_finish type interface not implemented*)
