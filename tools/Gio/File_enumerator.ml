open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let close self cancellable =
  let close_raw =
    foreign "g_file_enumerator_close" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = close_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_file_enumerator_close_async type callback not implemented*)
(*Not implemented g_file_enumerator_close_finish type interface not implemented*)
(*Not implemented g_file_enumerator_get_child return type interface not handled*)
(*Not implemented g_file_enumerator_get_container return type interface not handled*)
let has_pending =
  foreign "g_file_enumerator_has_pending" (t_typ @-> returning (bool))
let is_closed =
  foreign "g_file_enumerator_is_closed" (t_typ @-> returning (bool))
(*Not implemented g_file_enumerator_iterate type interface not implemented*)
let next_file self cancellable =
  let next_file_raw =
    foreign "g_file_enumerator_next_file" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt File_info.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = next_file_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_file_enumerator_next_files_async type callback not implemented*)
(*Not implemented g_file_enumerator_next_files_finish type interface not implemented*)
let set_pending =
  foreign "g_file_enumerator_set_pending" (t_typ @-> bool @-> returning (void))
