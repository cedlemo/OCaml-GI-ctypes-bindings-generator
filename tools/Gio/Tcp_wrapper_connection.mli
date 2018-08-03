open Ctypes

type t
val t_typ : t typ

val create :
  IOStream.t ptr -> Socket.t ptr -> Socket_connection.t ptr
val get_base_io_stream :
  t -> IOStream.t ptr
