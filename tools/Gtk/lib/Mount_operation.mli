open Ctypes

type t
val t_typ : t typ

val create:
  Window.t -> t
val get_parent:
  t -> Window.t
val get_screen:
  t -> Screen.t
val is_showing:
  t -> bool
val set_parent:
  t -> Window.t -> unit
val set_screen:
  t -> Screen.t -> unit
