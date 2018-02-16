open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_tls_certificate_new_from_file return type object not handled*)
(*Not implemented g_tls_certificate_new_from_files return type object not handled*)
(*Not implemented g_tls_certificate_new_from_pem return type object not handled*)
let list_create_from_file file =
  let list_create_from_file_raw =
    foreign "g_tls_certificate_list_new_from_file" (string@-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt List.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = list_create_from_file_raw file err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_tls_certificate_get_issuer return type object not handled*)
(*Not implemented g_tls_certificate_is_same type object not implemented*)
(*Not implemented g_tls_certificate_verify type interface not implemented*)
