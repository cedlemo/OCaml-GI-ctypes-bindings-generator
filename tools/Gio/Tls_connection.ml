open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let emit_accept_certificate =
  foreign "g_tls_connection_emit_accept_certificate" (t_typ @-> Tls_certificate.t_typ @-> Tls_certificate_flags.t_list_view @-> returning (bool))
let get_certificate =
  foreign "g_tls_connection_get_certificate" (t_typ @-> returning (Tls_certificate.t_typ))
let get_database =
  foreign "g_tls_connection_get_database" (t_typ @-> returning (Tls_database.t_typ))
let get_interaction =
  foreign "g_tls_connection_get_interaction" (t_typ @-> returning (Tls_interaction.t_typ))
let get_peer_certificate =
  foreign "g_tls_connection_get_peer_certificate" (t_typ @-> returning (Tls_certificate.t_typ))
let get_peer_certificate_errors =
  foreign "g_tls_connection_get_peer_certificate_errors" (t_typ @-> returning (Tls_certificate_flags.t_list_view))
let get_rehandshake_mode =
  foreign "g_tls_connection_get_rehandshake_mode" (t_typ @-> returning (Tls_rehandshake_mode.t_view))
let get_require_close_notify =
  foreign "g_tls_connection_get_require_close_notify" (t_typ @-> returning (bool))
let get_use_system_certdb =
  foreign "g_tls_connection_get_use_system_certdb" (t_typ @-> returning (bool))
let handshake self cancellable =
  let handshake_raw =
    foreign "g_tls_connection_handshake" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = handshake_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_tls_connection_handshake_async type callback not implemented*)
(*Not implemented g_tls_connection_handshake_finish type interface not implemented*)
let set_certificate =
  foreign "g_tls_connection_set_certificate" (t_typ @-> Tls_certificate.t_typ @-> returning (void))
let set_database =
  foreign "g_tls_connection_set_database" (t_typ @-> Tls_database.t_typ @-> returning (void))
let set_interaction =
  foreign "g_tls_connection_set_interaction" (t_typ @-> Tls_interaction.t_typ @-> returning (void))
let set_rehandshake_mode =
  foreign "g_tls_connection_set_rehandshake_mode" (t_typ @-> Tls_rehandshake_mode.t_view @-> returning (void))
let set_require_close_notify =
  foreign "g_tls_connection_set_require_close_notify" (t_typ @-> bool @-> returning (void))
let set_use_system_certdb =
  foreign "g_tls_connection_set_use_system_certdb" (t_typ @-> bool @-> returning (void))
