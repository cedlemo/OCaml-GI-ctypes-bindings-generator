open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_certificate_handle =
  foreign "g_tls_database_create_certificate_handle" (t_typ @-> ptr Tls_certificate.t_typ @-> returning (string_opt))
let lookup_certificate_for_handle self handle interaction flags cancellable =
  let lookup_certificate_for_handle_raw =
    foreign "g_tls_database_lookup_certificate_for_handle" (t_typ @-> string @-> ptr_opt Tls_interaction.t_typ @-> Tls_database_lookup_flags.t_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Tls_certificate.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_certificate_for_handle_raw self handle interaction flags cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_tls_database_lookup_certificate_for_handle_async type callback not implemented*)
(*Not implemented g_tls_database_lookup_certificate_for_handle_finish type interface not implemented*)
let lookup_certificate_issuer self certificate interaction flags cancellable =
  let lookup_certificate_issuer_raw =
    foreign "g_tls_database_lookup_certificate_issuer" (t_typ @-> ptr Tls_certificate.t_typ @-> ptr_opt Tls_interaction.t_typ @-> Tls_database_lookup_flags.t_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Tls_certificate.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_certificate_issuer_raw self certificate interaction flags cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_tls_database_lookup_certificate_issuer_async type callback not implemented*)
(*Not implemented g_tls_database_lookup_certificate_issuer_finish type interface not implemented*)
let lookup_certificates_issued_by self issuer_raw_dn interaction flags cancellable =
  let lookup_certificates_issued_by_raw =
    foreign "g_tls_database_lookup_certificates_issued_by" (t_typ @-> ptr Byte_array.t_typ @-> ptr_opt Tls_interaction.t_typ @-> Tls_database_lookup_flags.t_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt List.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_certificates_issued_by_raw self issuer_raw_dn interaction flags cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_tls_database_lookup_certificates_issued_by_async type callback not implemented*)
(*Not implemented g_tls_database_lookup_certificates_issued_by_finish type interface not implemented*)
(*Not implemented g_tls_database_verify_chain type interface not implemented*)
(*Not implemented g_tls_database_verify_chain_async type interface not implemented*)
(*Not implemented g_tls_database_verify_chain_finish type interface not implemented*)
