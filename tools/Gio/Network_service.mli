open Ctypes

type t
val t_typ : t typ

val create :
  string -> string -> string -> t
val get_domain :
  t -> string option
val get_protocol :
  t -> string option
val get_scheme :
  t -> string option
val get_service :
  t -> string option
val set_scheme :
  t -> string -> unit
