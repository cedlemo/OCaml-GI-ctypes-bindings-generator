open Ctypes

type t
val t_typ : t typ

(*Not implemented g_tls_connection_emit_accept_certificate type object not implemented*)
(*Not implemented g_tls_connection_get_certificate return type object not handled*)
(*Not implemented g_tls_connection_get_database return type object not handled*)
(*Not implemented g_tls_connection_get_interaction return type object not handled*)
(*Not implemented g_tls_connection_get_peer_certificate return type object not handled*)
val get_peer_certificate_errors:
  t structure ptr -> Tls_certificate_flags.t_list
val get_rehandshake_mode:
  t structure ptr -> Tls_rehandshake_mode.t
val get_require_close_notify:
  t structure ptr -> bool
val get_use_system_certdb:
  t structure ptr -> bool
(*Not implemented g_tls_connection_handshake type object not implemented*)
(*Not implemented g_tls_connection_handshake_async type object not implemented*)
(*Not implemented g_tls_connection_handshake_finish type interface not implemented*)
(*Not implemented g_tls_connection_set_certificate type object not implemented*)
(*Not implemented g_tls_connection_set_database type object not implemented*)
(*Not implemented g_tls_connection_set_interaction type object not implemented*)
val set_rehandshake_mode:
  t structure ptr -> Tls_rehandshake_mode.t -> unit
val set_require_close_notify:
  t structure ptr -> bool -> unit
val set_use_system_certdb:
  t structure ptr -> bool -> unit
