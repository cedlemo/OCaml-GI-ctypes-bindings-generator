open Ctypes

type t
val t_typ : t typ

val destroy:
  t structure ptr -> unit
val get_modal:
  t structure ptr -> bool
val get_title:
  t structure ptr -> string option
(*Not implemented gtk_native_dialog_get_transient_for return type object not handled*)
val get_visible:
  t structure ptr -> bool
val hide:
  t structure ptr -> unit
val run:
  t structure ptr -> int32
val set_modal:
  t structure ptr -> bool -> unit
val set_title:
  t structure ptr -> string -> unit
(*Not implemented gtk_native_dialog_set_transient_for type object not implemented*)
val show:
  t structure ptr -> unit
