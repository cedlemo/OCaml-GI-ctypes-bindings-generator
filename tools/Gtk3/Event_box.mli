open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val get_above_child :
  t -> bool
val get_visible_window :
  t -> bool
val set_above_child :
  t -> bool -> unit
val set_visible_window :
  t -> bool -> unit
