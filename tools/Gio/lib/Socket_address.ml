open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_from_native =
  foreign "g_socket_address_new_from_native" (ptr void @-> uint64_t @-> returning (t_typ))
let get_family =
  foreign "g_socket_address_get_family" (t_typ @-> returning (Socket_family.t_view))
let get_native_size =
  foreign "g_socket_address_get_native_size" (t_typ @-> returning (int64_t))
let to_native self dest destlen =
  let to_native_raw =
    foreign "g_socket_address_to_native" (t_typ @-> ptr_opt void @-> uint64_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = to_native_raw self dest destlen err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
