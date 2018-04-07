open Ctypes

type t
val t_typ : t typ

val create :
  IOStream.t -> Socket.t -> Socket_connection.t
val get_base_io_stream :
  t -> IOStream.t
