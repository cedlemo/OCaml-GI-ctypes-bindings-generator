open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_credentials_new return type object not handled*)
let get_unix_pid self =
  let get_unix_pid_raw =
    foreign "g_credentials_get_unix_pid" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = get_unix_pid_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_unix_user self =
  let get_unix_user_raw =
    foreign "g_credentials_get_unix_user" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = get_unix_user_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_credentials_is_same_user type object not implemented*)
let set_native =
  foreign "g_credentials_set_native" (ptr t_typ @-> Credentials_type.t_view @-> ptr void @-> returning (void))
let set_unix_user self uid =
  let set_unix_user_raw =
    foreign "g_credentials_set_unix_user" (ptr t_typ @-> uint32_t@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = set_unix_user_raw self uid err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let to_string =
  foreign "g_credentials_to_string" (ptr t_typ @-> returning (string_opt))
