open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val add_child :
  t -> Cell_accessible.t -> unit
val get_children :
  t -> List.t structure ptr
val remove_child :
  t -> Cell_accessible.t -> unit
