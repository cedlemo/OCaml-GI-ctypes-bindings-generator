open Ctypes

type t
val t_typ : t typ

val ask_password :
  t -> Tls_password.t ptr -> Cancellable.t ptr option -> (Tls_interaction_result.t, Error.t structure ptr option) result
(*Not implemented g_tls_interaction_ask_password_async type callback not implemented*)
(*Not implemented g_tls_interaction_ask_password_finish type interface not implemented*)
val invoke_ask_password :
  t -> Tls_password.t ptr -> Cancellable.t ptr option -> (Tls_interaction_result.t, Error.t structure ptr option) result
val invoke_request_certificate :
  t -> Tls_connection.t ptr -> Tls_certificate_request_flags.t -> Cancellable.t ptr option -> (Tls_interaction_result.t, Error.t structure ptr option) result
val request_certificate :
  t -> Tls_connection.t ptr -> Tls_certificate_request_flags.t -> Cancellable.t ptr option -> (Tls_interaction_result.t, Error.t structure ptr option) result
(*Not implemented g_tls_interaction_request_certificate_async type callback not implemented*)
(*Not implemented g_tls_interaction_request_certificate_finish type interface not implemented*)
