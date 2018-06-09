open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val is_active :
  t -> bool
val start :
  t -> unit
val stop :
  t -> unit
