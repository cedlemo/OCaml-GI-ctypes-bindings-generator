open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_propagation_phase =
  foreign "gtk_event_controller_get_propagation_phase" (ptr t_typ @-> returning (Propagation_phase.t_view))
(*Not implemented gtk_event_controller_get_widget return type object not handled*)
(*Not implemented gtk_event_controller_handle_event type union not implemented*)
let reset =
  foreign "gtk_event_controller_reset" (ptr t_typ @-> returning (void))
let set_propagation_phase =
  foreign "gtk_event_controller_set_propagation_phase" (ptr t_typ @-> Propagation_phase.t_view @-> returning (void))
