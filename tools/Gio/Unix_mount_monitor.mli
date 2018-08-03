open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val get :
  unit -> t ptr
val set_rate_limit :
  t -> int32 -> unit
