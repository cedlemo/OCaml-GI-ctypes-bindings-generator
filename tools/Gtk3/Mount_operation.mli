open Ctypes

type t
val t_typ : t typ

val create :
  Window.t ptr option -> t ptr
val get_parent :
  t -> Window.t ptr
val get_screen :
  t -> Screen.t ptr
val is_showing :
  t -> bool
val set_parent :
  t -> Window.t ptr option -> unit
val set_screen :
  t -> Screen.t ptr -> unit
