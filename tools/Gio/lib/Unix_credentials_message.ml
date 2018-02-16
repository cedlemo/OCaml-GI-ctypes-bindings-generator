open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_unix_credentials_message_new return type object not handled*)
(*Not implemented g_unix_credentials_message_new_with_credentials type object not implemented*)
let is_supported =
  foreign "g_unix_credentials_message_is_supported" (void @-> returning (bool))
(*Not implemented g_unix_credentials_message_get_credentials return type object not handled*)
