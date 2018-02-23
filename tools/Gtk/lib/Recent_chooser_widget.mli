open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val create_for_manager:
  Recent_manager.t -> Widget.t
