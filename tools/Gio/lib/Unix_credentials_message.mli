open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Socket_control_message.t
val create_with_credentials :
  Credentials.t -> Socket_control_message.t
val is_supported :
  unit -> bool
val get_credentials :
  t -> Credentials.t
