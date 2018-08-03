open Ctypes

type t
val t_typ : t typ

val receive_credentials :
  t -> Cancellable.t ptr option -> (Credentials.t ptr option, Error.t structure ptr option) result
(*Not implemented g_unix_connection_receive_credentials_async type callback not implemented*)
(*Not implemented g_unix_connection_receive_credentials_finish type interface not implemented*)
val receive_fd :
  t -> Cancellable.t ptr option -> (int32, Error.t structure ptr option) result
val send_credentials :
  t -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
(*Not implemented g_unix_connection_send_credentials_async type callback not implemented*)
(*Not implemented g_unix_connection_send_credentials_finish type interface not implemented*)
val send_fd :
  t -> int32 -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
