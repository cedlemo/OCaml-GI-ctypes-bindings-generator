open Ctypes

type t
val t_typ : t typ

val create :
  Inet_address.t -> Unsigned.uint32 -> (t, Error.t structure ptr option) result
val create_from_string :
  string -> (t, Error.t structure ptr option) result
val equal :
  t -> t -> bool
val get_address :
  t -> Inet_address.t
val get_family :
  t -> Socket_family.t
val get_length :
  t -> Unsigned.uint32
val matches :
  t -> Inet_address.t -> bool
val to_string :
  t -> string option
