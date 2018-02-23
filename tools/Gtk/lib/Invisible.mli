open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val create_for_screen:
  Screen.t -> Widget.t
val get_screen:
  t -> Screen.t
val set_screen:
  t -> Screen.t -> unit
