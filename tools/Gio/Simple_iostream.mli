open Ctypes

type t
val t_typ : t typ

val create :
  Input_stream.t -> Output_stream.t -> IOStream.t
