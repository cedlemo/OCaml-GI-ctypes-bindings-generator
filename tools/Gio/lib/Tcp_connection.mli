open Ctypes

type t
val t_typ : t typ

val get_graceful_disconnect:
  t structure ptr -> bool
val set_graceful_disconnect:
  t structure ptr -> bool -> unit
