open Ctypes

type t
val t_typ : t typ

val create :
  Inet_address.t ptr -> Unsigned.uint16 -> string -> string -> Unsigned.uint16 -> string option -> string option -> Socket_address.t ptr
val get_destination_hostname :
  t -> string option
val get_destination_port :
  t -> Unsigned.uint16
val get_destination_protocol :
  t -> string option
val get_password :
  t -> string option
val get_protocol :
  t -> string option
val get_uri :
  t -> string option
val get_username :
  t -> string option
