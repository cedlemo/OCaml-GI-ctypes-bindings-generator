open Ctypes

type t
val t_typ : t typ

val get_children :
  t -> List.t structure (* Not implemented : interface *) ptr
