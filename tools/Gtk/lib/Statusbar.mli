open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_statusbar_new return type object not handled*)
val get_context_id:
  t structure ptr -> string -> Unsigned.uint32
(*Not implemented gtk_statusbar_get_message_area return type object not handled*)
val pop:
  t structure ptr -> Unsigned.uint32 -> unit
val push:
  t structure ptr -> Unsigned.uint32 -> string -> Unsigned.uint32
val remove:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val remove_all:
  t structure ptr -> Unsigned.uint32 -> unit
