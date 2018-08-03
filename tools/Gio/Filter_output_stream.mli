open Ctypes

type t
val t_typ : t typ

val get_base_stream :
  t -> Output_stream.t ptr
val get_close_base_stream :
  t -> bool
val set_close_base_stream :
  t -> bool -> unit
