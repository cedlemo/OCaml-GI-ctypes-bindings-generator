open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let next self cancellable =
  let next_raw =
    foreign "g_socket_address_enumerator_next" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Socket_address.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = next_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_socket_address_enumerator_next_async type callback not implemented*)
(*Not implemented g_socket_address_enumerator_next_finish type interface not implemented*)
