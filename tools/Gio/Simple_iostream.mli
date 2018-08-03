open Ctypes

type t
val t_typ : t typ

val create :
  Input_stream.t ptr -> Output_stream.t ptr -> IOStream.t ptr
