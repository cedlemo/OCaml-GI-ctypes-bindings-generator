open Ctypes

type t
val t_typ : t typ

(*Not implemented g_tls_certificate_new_from_file return type object not handled*)
(*Not implemented g_tls_certificate_new_from_files return type object not handled*)
(*Not implemented g_tls_certificate_new_from_pem return type object not handled*)
val list_create_from_file:
  string -> (List.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_tls_certificate_get_issuer return type object not handled*)
(*Not implemented g_tls_certificate_is_same type object not implemented*)
(*Not implemented g_tls_certificate_verify type interface not implemented*)
