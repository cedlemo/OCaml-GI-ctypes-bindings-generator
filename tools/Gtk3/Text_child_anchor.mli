open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val get_deleted :
  t -> bool
val get_widgets :
  t -> List.t structure (* Not implemented : interface *) ptr
