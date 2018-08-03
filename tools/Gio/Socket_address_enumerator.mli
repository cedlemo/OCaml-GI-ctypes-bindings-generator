open Ctypes

type t
val t_typ : t typ

val next :
  t -> Cancellable.t ptr option -> (Socket_address.t ptr option, Error.t structure ptr option) result
(*Not implemented g_socket_address_enumerator_next_async type callback not implemented*)
(*Not implemented g_socket_address_enumerator_next_finish type interface not implemented*)
