open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Tool_item.t ptr
val get_draw :
  t -> bool
val set_draw :
  t -> bool -> unit
