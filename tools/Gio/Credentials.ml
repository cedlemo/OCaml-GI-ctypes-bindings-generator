open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_credentials_new" (void @-> returning (t_typ))
let get_unix_pid self =
  let get_unix_pid_raw =
    foreign "g_credentials_get_unix_pid" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_unix_pid_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_unix_user self =
  let get_unix_user_raw =
    foreign "g_credentials_get_unix_user" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_unix_user_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let is_same_user self other_credentials =
  let is_same_user_raw =
    foreign "g_credentials_is_same_user" (t_typ @-> t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = is_same_user_raw self other_credentials err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_native =
  foreign "g_credentials_set_native" (t_typ @-> Credentials_type.t_view @-> ptr void @-> returning (void))
let set_unix_user self uid =
  let set_unix_user_raw =
    foreign "g_credentials_set_unix_user" (t_typ @-> uint32_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_unix_user_raw self uid err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let to_string =
  foreign "g_credentials_to_string" (t_typ @-> returning (string_opt))
