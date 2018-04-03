open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Tool_item.t
val create_from_stock :
  string -> Tool_item.t
val get_active :
  t -> bool
val set_active :
  t -> bool -> unit
