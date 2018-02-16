open Ctypes

type t
val t_typ : t typ

val get_name:
  t structure ptr -> string option
(*Not implemented g_menu_link_iter_get_next type object not implemented*)
(*Not implemented g_menu_link_iter_get_value return type object not handled*)
val next:
  t structure ptr -> bool
