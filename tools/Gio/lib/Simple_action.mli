open Ctypes

type t
val t_typ : t typ

(*Not implemented g_simple_action_new return type object not handled*)
(*Not implemented g_simple_action_new_stateful return type object not handled*)
val set_enabled:
  t structure ptr -> bool -> unit
val set_state:
  t structure ptr -> Variant.t structure ptr -> unit
val set_state_hint:
  t structure ptr -> Variant.t structure ptr option -> unit
