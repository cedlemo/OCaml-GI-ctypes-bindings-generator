open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val start :
  t -> unit
val stop :
  t -> unit
