open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_shortcut_label_new return type object not handled*)
val get_accelerator:
  t structure ptr -> string option
val get_disabled_text:
  t structure ptr -> string option
val set_accelerator:
  t structure ptr -> string -> unit
val set_disabled_text:
  t structure ptr -> string -> unit
