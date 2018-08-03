open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_unix_credentials_message_new" (void @-> returning (ptr Socket_control_message.t_typ))
let create_with_credentials =
  foreign "g_unix_credentials_message_new_with_credentials" (ptr Credentials.t_typ @-> returning (ptr Socket_control_message.t_typ))
let is_supported =
  foreign "g_unix_credentials_message_is_supported" (void @-> returning (bool))
let get_credentials =
  foreign "g_unix_credentials_message_get_credentials" (t_typ @-> returning (ptr Credentials.t_typ))
