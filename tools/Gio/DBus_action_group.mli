open Ctypes

type t
val t_typ : t typ

val get :
  DBus_connection.t ptr -> string option -> string -> t ptr
