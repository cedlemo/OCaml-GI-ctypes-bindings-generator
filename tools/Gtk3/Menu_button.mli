open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val get_align_widget :
  t -> Widget.t ptr option
val get_direction :
  t -> Arrow_type.t
val get_menu_model :
  t -> Menu_model.t ptr option
val get_popover :
  t -> Popover.t ptr option
val get_popup :
  t -> Menu.t ptr option
val get_use_popover :
  t -> bool
val set_align_widget :
  t -> Widget.t ptr option -> unit
val set_direction :
  t -> Arrow_type.t -> unit
val set_menu_model :
  t -> Menu_model.t ptr option -> unit
val set_popover :
  t -> Widget.t ptr option -> unit
val set_popup :
  t -> Widget.t ptr option -> unit
val set_use_popover :
  t -> bool -> unit
