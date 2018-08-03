open Ctypes

type t
val t_typ : t typ

val get :
  unit -> t ptr
