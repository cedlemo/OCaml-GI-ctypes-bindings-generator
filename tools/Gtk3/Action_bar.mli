open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val get_center_widget :
  t -> Widget.t ptr option
val pack_end :
  t -> Widget.t ptr -> unit
val pack_start :
  t -> Widget.t ptr -> unit
val set_center_widget :
  t -> Widget.t ptr option -> unit
