open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_text_mark_new return type object not handled*)
(*Not implemented gtk_text_mark_get_buffer return type object not handled*)
val get_deleted:
  t structure ptr -> bool
val get_left_gravity:
  t structure ptr -> bool
val get_name:
  t structure ptr -> string option
val get_visible:
  t structure ptr -> bool
val set_visible:
  t structure ptr -> bool -> unit
