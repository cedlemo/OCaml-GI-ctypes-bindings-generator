open Ctypes

type t
val t_typ : t typ

val create :
  Orientation.t -> Widget.t
val add1 :
  t -> Widget.t -> unit
val add2 :
  t -> Widget.t -> unit
val get_child1 :
  t -> Widget.t
val get_child2 :
  t -> Widget.t
val get_handle_window :
  t -> Window.t
val get_position :
  t -> int32
val get_wide_handle :
  t -> bool
val pack1 :
  t -> Widget.t -> bool -> bool -> unit
val pack2 :
  t -> Widget.t -> bool -> bool -> unit
val set_position :
  t -> int32 -> unit
val set_wide_handle :
  t -> bool -> unit
