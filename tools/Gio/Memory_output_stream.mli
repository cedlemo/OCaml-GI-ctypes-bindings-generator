open Ctypes

type t
val t_typ : t typ

val create_resizable :
  unit -> Output_stream.t
val get_data :
  t -> unit ptr option
val get_data_size :
  t -> Unsigned.uint64
val get_size :
  t -> Unsigned.uint64
val steal_as_bytes :
  t -> Bytes.t structure ptr
val steal_data :
  t -> unit ptr option
