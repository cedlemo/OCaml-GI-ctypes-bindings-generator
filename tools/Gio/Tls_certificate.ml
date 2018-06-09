open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_from_file file =
  let create_from_file_raw =
    foreign "g_tls_certificate_new_from_file" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_file_raw file err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_files cert_file key_file =
  let create_from_files_raw =
    foreign "g_tls_certificate_new_from_files" (string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_files_raw cert_file key_file err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_pem data length =
  let create_from_pem_raw =
    foreign "g_tls_certificate_new_from_pem" (string @-> int64_t @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_pem_raw data length err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let list_create_from_file file =
  let list_create_from_file_raw =
    foreign "g_tls_certificate_list_new_from_file" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt List.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = list_create_from_file_raw file err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_issuer =
  foreign "g_tls_certificate_get_issuer" (t_typ @-> returning (t_typ))
let is_same =
  foreign "g_tls_certificate_is_same" (t_typ @-> t_typ @-> returning (bool))
(*Not implemented g_tls_certificate_verify type interface not implemented*)
