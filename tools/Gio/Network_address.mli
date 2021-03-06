open Ctypes

type t
val t_typ : t typ

val create :
  string -> Unsigned.uint16 -> t ptr
val create_loopback :
  Unsigned.uint16 -> t ptr
val parse :
  string -> Unsigned.uint16 -> (t ptr option, Error.t structure ptr option) result
val parse_uri :
  string -> Unsigned.uint16 -> (t ptr option, Error.t structure ptr option) result
val get_hostname :
  t -> string option
val get_port :
  t -> Unsigned.uint16
val get_scheme :
  t -> string option
