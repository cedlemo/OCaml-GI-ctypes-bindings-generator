open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_align_widget:
  t -> Widget.t
val get_direction:
  t -> Arrow_type.t
val get_menu_model:
  t -> Menu_model.t
val get_popover:
  t -> Popover.t
val get_popup:
  t -> Menu.t
val get_use_popover:
  t -> bool
val set_align_widget:
  t -> Widget.t -> unit
val set_direction:
  t -> Arrow_type.t -> unit
val set_menu_model:
  t -> Menu_model.t -> unit
val set_popover:
  t -> Widget.t -> unit
val set_popup:
  t -> Widget.t -> unit
val set_use_popover:
  t -> bool -> unit
