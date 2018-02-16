open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_socket_address_new_from_native return type object not handled*)
let get_family =
  foreign "g_socket_address_get_family" (ptr t_typ @-> returning (Socket_family.t_view))
let get_native_size =
  foreign "g_socket_address_get_native_size" (ptr t_typ @-> returning (int64_t))
let to_native self dest destlen =
  let to_native_raw =
    foreign "g_socket_address_to_native" (ptr t_typ @-> ptr_opt void @-> uint64_t@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = to_native_raw self dest destlen err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
