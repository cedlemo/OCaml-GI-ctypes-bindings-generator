open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_popover_new type object not implemented*)
(*Not implemented gtk_popover_new_from_model type object not implemented*)
(*Not implemented gtk_popover_bind_model type object not implemented*)
val get_constrain_to:
  t structure ptr -> Popover_constraint.t
(*Not implemented gtk_popover_get_default_widget return type object not handled*)
val get_modal:
  t structure ptr -> bool
val get_pointing_to :
  t structure ptr -> (bool * Rectangle.t structure)
val get_position:
  t structure ptr -> Position_type.t
(*Not implemented gtk_popover_get_relative_to return type object not handled*)
val get_transitions_enabled:
  t structure ptr -> bool
val popdown:
  t structure ptr -> unit
val popup:
  t structure ptr -> unit
val set_constrain_to:
  t structure ptr -> Popover_constraint.t -> unit
(*Not implemented gtk_popover_set_default_widget type object not implemented*)
val set_modal:
  t structure ptr -> bool -> unit
val set_pointing_to:
  t structure ptr -> Rectangle.t structure ptr -> unit
val set_position:
  t structure ptr -> Position_type.t -> unit
(*Not implemented gtk_popover_set_relative_to type object not implemented*)
val set_transitions_enabled:
  t structure ptr -> bool -> unit
