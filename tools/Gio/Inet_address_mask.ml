open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create addr length =
  let create_raw =
    foreign "g_inet_address_mask_new" (ptr Inet_address.t_typ @-> uint32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_raw addr length err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_string mask_string =
  let create_from_string_raw =
    foreign "g_inet_address_mask_new_from_string" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_string_raw mask_string err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let equal =
  foreign "g_inet_address_mask_equal" (t_typ @-> ptr t_typ @-> returning (bool))
let get_address =
  foreign "g_inet_address_mask_get_address" (t_typ @-> returning (ptr Inet_address.t_typ))
let get_family =
  foreign "g_inet_address_mask_get_family" (t_typ @-> returning (Socket_family.t_view))
let get_length =
  foreign "g_inet_address_mask_get_length" (t_typ @-> returning (uint32_t))
let matches =
  foreign "g_inet_address_mask_matches" (t_typ @-> ptr Inet_address.t_typ @-> returning (bool))
let to_string =
  foreign "g_inet_address_mask_to_string" (t_typ @-> returning (string_opt))
