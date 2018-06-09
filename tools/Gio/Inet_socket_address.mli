open Ctypes

type t
val t_typ : t typ

val create :
  Inet_address.t -> Unsigned.uint16 -> Socket_address.t
val create_from_string :
  string -> Unsigned.uint32 -> Socket_address.t
val get_address :
  t -> Inet_address.t
val get_flowinfo :
  t -> Unsigned.uint32
val get_port :
  t -> Unsigned.uint16
val get_scope_id :
  t -> Unsigned.uint32
