open Ctypes

type t
val t_typ : t typ

val get_graceful_disconnect :
  t -> bool
val set_graceful_disconnect :
  t -> bool -> unit
