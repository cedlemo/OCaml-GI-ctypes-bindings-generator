open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val get :
  unit -> t
val set_rate_limit :
  t -> int32 -> unit
