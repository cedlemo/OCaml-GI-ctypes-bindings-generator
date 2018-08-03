open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Socket_control_message.t ptr
val create_with_credentials :
  Credentials.t ptr -> Socket_control_message.t ptr
val is_supported :
  unit -> bool
val get_credentials :
  t -> Credentials.t ptr
