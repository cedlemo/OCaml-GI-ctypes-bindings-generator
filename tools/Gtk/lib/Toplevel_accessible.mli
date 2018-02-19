open Ctypes

type t
val t_typ : t typ

val get_children:
  t structure ptr -> List.t structure ptr
