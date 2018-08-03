open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val add_child :
  t -> Cell_accessible.t ptr -> unit
val get_children :
  t -> List.t structure (* Not implemented : interface *) ptr
val remove_child :
  t -> Cell_accessible.t ptr -> unit
