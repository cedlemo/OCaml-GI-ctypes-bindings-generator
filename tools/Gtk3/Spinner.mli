open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val start :
  t -> unit
val stop :
  t -> unit
