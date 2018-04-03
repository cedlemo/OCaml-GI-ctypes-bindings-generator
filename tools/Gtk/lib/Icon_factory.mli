open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val lookup_default :
  string -> Icon_set.t structure ptr
val add :
  t -> string -> Icon_set.t structure ptr -> unit
val add_default :
  t -> unit
val lookup :
  t -> string -> Icon_set.t structure ptr
val remove_default :
  t -> unit
