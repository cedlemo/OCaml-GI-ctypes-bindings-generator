open Ctypes

type t
val t_typ : t typ

val create :
  int32 -> bool -> Output_stream.t ptr
val get_close_fd :
  t -> bool
val get_fd :
  t -> int32
val set_close_fd :
  t -> bool -> unit
