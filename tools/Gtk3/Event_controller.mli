open Ctypes

type t
val t_typ : t typ

val get_propagation_phase :
  t -> Propagation_phase.t
val get_widget :
  t -> Widget.t
(*Not implemented gtk_event_controller_handle_event type union not implemented*)
val reset :
  t -> unit
val set_propagation_phase :
  t -> Propagation_phase.t -> unit
