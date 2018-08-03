open Ctypes

type t
val t_typ : t typ

val create :
  Widget.t ptr option -> Widget.t ptr
val create_from_model :
  Widget.t ptr option -> Menu_model.t ptr -> Widget.t ptr
val bind_model :
  t -> Menu_model.t ptr option -> string option -> unit
val get_constrain_to :
  t -> Popover_constraint.t
val get_default_widget :
  t -> Widget.t ptr option
val get_modal :
  t -> bool
val get_pointing_to :
  t -> (bool * Rectangle.t structure)
val get_position :
  t -> Position_type.t
val get_relative_to :
  t -> Widget.t ptr
val get_transitions_enabled :
  t -> bool
val popdown :
  t -> unit
val popup :
  t -> unit
val set_constrain_to :
  t -> Popover_constraint.t -> unit
val set_default_widget :
  t -> Widget.t ptr option -> unit
val set_modal :
  t -> bool -> unit
val set_pointing_to :
  t -> Rectangle.t structure ptr -> unit
val set_position :
  t -> Position_type.t -> unit
val set_relative_to :
  t -> Widget.t ptr option -> unit
val set_transitions_enabled :
  t -> bool -> unit
