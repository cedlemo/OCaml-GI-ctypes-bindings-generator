open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_for_screen :
  Screen.t ptr -> Widget.t ptr
val get_screen :
  t -> Screen.t ptr
val set_screen :
  t -> Screen.t ptr -> unit
