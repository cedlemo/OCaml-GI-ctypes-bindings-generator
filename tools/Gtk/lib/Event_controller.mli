open Ctypes

type t
val t_typ : t typ

val get_propagation_phase:
  t structure ptr -> Propagation_phase.t
(*Not implemented gtk_event_controller_get_widget return type object not handled*)
(*Not implemented gtk_event_controller_handle_event type union not implemented*)
val reset:
  t structure ptr -> unit
val set_propagation_phase:
  t structure ptr -> Propagation_phase.t -> unit
