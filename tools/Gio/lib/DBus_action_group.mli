open Ctypes

type t
val t_typ : t typ

val get :
  DBus_connection.t -> string -> string -> t
