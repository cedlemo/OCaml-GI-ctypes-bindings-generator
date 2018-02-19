open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_switch_new return type object not handled*)
val get_active:
  t structure ptr -> bool
val get_state:
  t structure ptr -> bool
val set_active:
  t structure ptr -> bool -> unit
val set_state:
  t structure ptr -> bool -> unit
