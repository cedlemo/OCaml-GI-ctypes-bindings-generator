open Ctypes

type t
val t_typ : t typ

val create :
  string option -> Window.t ptr option -> Widget.t ptr
