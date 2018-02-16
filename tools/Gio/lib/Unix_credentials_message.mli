open Ctypes

type t
val t_typ : t typ

(*Not implemented g_unix_credentials_message_new return type object not handled*)
(*Not implemented g_unix_credentials_message_new_with_credentials type object not implemented*)
val is_supported:
  unit -> bool
(*Not implemented g_unix_credentials_message_get_credentials return type object not handled*)
