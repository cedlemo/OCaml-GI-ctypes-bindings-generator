open Ctypes

type t
val t_typ : t typ

val get_base_stream :
  t -> Input_stream.t
val get_close_base_stream :
  t -> bool
val set_close_base_stream :
  t -> bool -> unit
