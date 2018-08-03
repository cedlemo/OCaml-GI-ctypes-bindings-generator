open Ctypes

type t
val t_typ : t typ

val create_certificate_handle :
  t -> Tls_certificate.t ptr -> string option
val lookup_certificate_for_handle :
  t -> string -> Tls_interaction.t ptr option -> Tls_database_lookup_flags.t -> Cancellable.t ptr option -> (Tls_certificate.t ptr option, Error.t structure ptr option) result
(*Not implemented g_tls_database_lookup_certificate_for_handle_async type callback not implemented*)
(*Not implemented g_tls_database_lookup_certificate_for_handle_finish type interface not implemented*)
val lookup_certificate_issuer :
  t -> Tls_certificate.t ptr -> Tls_interaction.t ptr option -> Tls_database_lookup_flags.t -> Cancellable.t ptr option -> (Tls_certificate.t ptr option, Error.t structure ptr option) result
(*Not implemented g_tls_database_lookup_certificate_issuer_async type callback not implemented*)
(*Not implemented g_tls_database_lookup_certificate_issuer_finish type interface not implemented*)
val lookup_certificates_issued_by :
  t -> Byte_array.t structure ptr -> Tls_interaction.t ptr option -> Tls_database_lookup_flags.t -> Cancellable.t ptr option -> (List.t structure (* Not implemented : interface *) ptr option, Error.t structure ptr option) result
(*Not implemented g_tls_database_lookup_certificates_issued_by_async type callback not implemented*)
(*Not implemented g_tls_database_lookup_certificates_issued_by_finish type interface not implemented*)
(*Not implemented g_tls_database_verify_chain type interface not implemented*)
(*Not implemented g_tls_database_verify_chain_async type interface not implemented*)
(*Not implemented g_tls_database_verify_chain_finish type interface not implemented*)
