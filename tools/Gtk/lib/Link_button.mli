open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_link_button_new return type object not handled*)
(*Not implemented gtk_link_button_new_with_label return type object not handled*)
val get_uri:
  t structure ptr -> string option
val get_visited:
  t structure ptr -> bool
val set_uri:
  t structure ptr -> string -> unit
val set_visited:
  t structure ptr -> bool -> unit
