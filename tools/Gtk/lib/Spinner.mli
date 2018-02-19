open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_spinner_new return type object not handled*)
val start:
  t structure ptr -> unit
val stop:
  t structure ptr -> unit
