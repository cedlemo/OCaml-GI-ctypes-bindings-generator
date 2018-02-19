open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_file_chooser_native_new type object not implemented*)
val get_accept_label:
  t structure ptr -> string option
val get_cancel_label:
  t structure ptr -> string option
val set_accept_label:
  t structure ptr -> string option -> unit
val set_cancel_label:
  t structure ptr -> string option -> unit
