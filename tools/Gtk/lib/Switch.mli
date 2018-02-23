open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_active:
  t -> bool
val get_state:
  t -> bool
val set_active:
  t -> bool -> unit
val set_state:
  t -> bool -> unit
