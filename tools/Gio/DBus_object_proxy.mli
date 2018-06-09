open Ctypes

type t
val t_typ : t typ

val create :
  DBus_connection.t -> string -> t
val get_connection :
  t -> DBus_connection.t
