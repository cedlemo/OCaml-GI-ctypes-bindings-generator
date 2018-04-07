open Ctypes

type t
val t_typ : t typ

val emit_accept_certificate :
  t -> Tls_certificate.t -> Tls_certificate_flags.t_list -> bool
val get_certificate :
  t -> Tls_certificate.t
val get_database :
  t -> Tls_database.t
val get_interaction :
  t -> Tls_interaction.t
val get_peer_certificate :
  t -> Tls_certificate.t
val get_peer_certificate_errors :
  t -> Tls_certificate_flags.t_list
val get_rehandshake_mode :
  t -> Tls_rehandshake_mode.t
val get_require_close_notify :
  t -> bool
val get_use_system_certdb :
  t -> bool
val handshake :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_tls_connection_handshake_async type callback not implemented*)
(*Not implemented g_tls_connection_handshake_finish type interface not implemented*)
val set_certificate :
  t -> Tls_certificate.t -> unit
val set_database :
  t -> Tls_database.t -> unit
val set_interaction :
  t -> Tls_interaction.t -> unit
val set_rehandshake_mode :
  t -> Tls_rehandshake_mode.t -> unit
val set_require_close_notify :
  t -> bool -> unit
val set_use_system_certdb :
  t -> bool -> unit
