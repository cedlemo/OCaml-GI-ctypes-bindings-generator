open Ctypes

type t
val t_typ : t typ

val create :
  Permission.t -> Widget.t
val get_permission :
  t -> Permission.t
val set_permission :
  t -> Permission.t -> unit
