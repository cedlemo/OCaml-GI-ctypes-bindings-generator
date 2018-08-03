open Ctypes

type t
val t_typ : t typ

val create :
  Permission.t ptr option -> Widget.t ptr
val get_permission :
  t -> Permission.t ptr
val set_permission :
  t -> Permission.t ptr option -> unit
