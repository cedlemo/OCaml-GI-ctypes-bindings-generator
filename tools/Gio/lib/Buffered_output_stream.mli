open Ctypes

type t
val t_typ : t typ

val create :
  Output_stream.t -> Output_stream.t
val create_sized :
  Output_stream.t -> Unsigned.uint64 -> Output_stream.t
val get_auto_grow :
  t -> bool
val get_buffer_size :
  t -> Unsigned.uint64
val set_auto_grow :
  t -> bool -> unit
val set_buffer_size :
  t -> Unsigned.uint64 -> unit
