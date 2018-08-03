open Ctypes

type t
val t_typ : t typ

val create :
  string option -> t ptr
val changed :
  t -> bool -> unit
(*Not implemented gtk_text_tag_event type union not implemented*)
val get_priority :
  t -> int32
val set_priority :
  t -> int32 -> unit
