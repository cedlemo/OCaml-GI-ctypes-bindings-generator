open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_tls_connection_emit_accept_certificate type object not implemented*)
(*Not implemented g_tls_connection_get_certificate return type object not handled*)
(*Not implemented g_tls_connection_get_database return type object not handled*)
(*Not implemented g_tls_connection_get_interaction return type object not handled*)
(*Not implemented g_tls_connection_get_peer_certificate return type object not handled*)
let get_peer_certificate_errors =
  foreign "g_tls_connection_get_peer_certificate_errors" (ptr t_typ @-> returning (Tls_certificate_flags.t_list_view))
let get_rehandshake_mode =
  foreign "g_tls_connection_get_rehandshake_mode" (ptr t_typ @-> returning (Tls_rehandshake_mode.t_view))
let get_require_close_notify =
  foreign "g_tls_connection_get_require_close_notify" (ptr t_typ @-> returning (bool))
let get_use_system_certdb =
  foreign "g_tls_connection_get_use_system_certdb" (ptr t_typ @-> returning (bool))
(*Not implemented g_tls_connection_handshake type object not implemented*)
(*Not implemented g_tls_connection_handshake_async type object not implemented*)
(*Not implemented g_tls_connection_handshake_finish type interface not implemented*)
(*Not implemented g_tls_connection_set_certificate type object not implemented*)
(*Not implemented g_tls_connection_set_database type object not implemented*)
(*Not implemented g_tls_connection_set_interaction type object not implemented*)
let set_rehandshake_mode =
  foreign "g_tls_connection_set_rehandshake_mode" (ptr t_typ @-> Tls_rehandshake_mode.t_view @-> returning (void))
let set_require_close_notify =
  foreign "g_tls_connection_set_require_close_notify" (ptr t_typ @-> bool @-> returning (void))
let set_use_system_certdb =
  foreign "g_tls_connection_set_use_system_certdb" (ptr t_typ @-> bool @-> returning (void))
