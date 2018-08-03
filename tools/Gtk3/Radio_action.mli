open Ctypes

type t
val t_typ : t typ

val create :
  string -> string option -> string option -> string option -> int32 -> t ptr
val get_current_value :
  t -> int32
val get_group :
  t -> SList.t structure (* Not implemented : interface *) ptr
val join_group :
  t -> t ptr option -> unit
val set_current_value :
  t -> int32 -> unit
val set_group :
  t -> SList.t structure (* Not implemented : interface *) ptr option -> unit
