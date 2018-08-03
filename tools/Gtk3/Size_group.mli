open Ctypes

type t
val t_typ : t typ

val create :
  Size_group_mode.t -> t ptr
val add_widget :
  t -> Widget.t ptr -> unit
val get_ignore_hidden :
  t -> bool
val get_mode :
  t -> Size_group_mode.t
val get_widgets :
  t -> SList.t structure (* Not implemented : interface *) ptr
val remove_widget :
  t -> Widget.t ptr -> unit
val set_ignore_hidden :
  t -> bool -> unit
val set_mode :
  t -> Size_group_mode.t -> unit
