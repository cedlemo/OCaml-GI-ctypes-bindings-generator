open Ctypes

type t
val t_typ : t typ

val connect_widget_destroyed :
  t -> unit
val get_widget :
  t -> Widget.t ptr option
val set_widget :
  t -> Widget.t ptr option -> unit
