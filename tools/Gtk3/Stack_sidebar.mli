open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val get_stack :
  t -> Stack.t ptr option
val set_stack :
  t -> Stack.t ptr -> unit
