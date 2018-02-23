open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_stack:
  t -> Stack.t
val set_stack:
  t -> Stack.t -> unit
