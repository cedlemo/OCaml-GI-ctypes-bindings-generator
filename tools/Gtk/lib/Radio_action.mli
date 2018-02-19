open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_radio_action_new return type object not handled*)
val get_current_value:
  t structure ptr -> int32
val get_group:
  t structure ptr -> SList.t structure ptr
(*Not implemented gtk_radio_action_join_group type object not implemented*)
val set_current_value:
  t structure ptr -> int32 -> unit
val set_group:
  t structure ptr -> SList.t structure ptr option -> unit
