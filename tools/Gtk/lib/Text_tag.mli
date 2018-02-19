open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_text_tag_new return type object not handled*)
val changed:
  t structure ptr -> bool -> unit
(*Not implemented gtk_text_tag_event type object not implemented*)
val get_priority:
  t structure ptr -> int32
val set_priority:
  t structure ptr -> int32 -> unit
