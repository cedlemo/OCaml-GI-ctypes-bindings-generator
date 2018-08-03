open Ctypes

type t
val t_typ : t typ

val create :
  DBus_connection.t ptr -> string -> t ptr
val get_connection :
  t -> DBus_connection.t ptr
