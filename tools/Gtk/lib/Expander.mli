open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_expander_new return type object not handled*)
(*Not implemented gtk_expander_new_with_mnemonic return type object not handled*)
val get_expanded:
  t structure ptr -> bool
val get_label:
  t structure ptr -> string option
val get_label_fill:
  t structure ptr -> bool
(*Not implemented gtk_expander_get_label_widget return type object not handled*)
val get_resize_toplevel:
  t structure ptr -> bool
val get_spacing:
  t structure ptr -> int32
val get_use_markup:
  t structure ptr -> bool
val get_use_underline:
  t structure ptr -> bool
val set_expanded:
  t structure ptr -> bool -> unit
val set_label:
  t structure ptr -> string option -> unit
val set_label_fill:
  t structure ptr -> bool -> unit
(*Not implemented gtk_expander_set_label_widget type object not implemented*)
val set_resize_toplevel:
  t structure ptr -> bool -> unit
val set_spacing:
  t structure ptr -> int32 -> unit
val set_use_markup:
  t structure ptr -> bool -> unit
val set_use_underline:
  t structure ptr -> bool -> unit
