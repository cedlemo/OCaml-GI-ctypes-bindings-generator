open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_message_dialog_get_image return type object not handled*)
(*Not implemented gtk_message_dialog_get_message_area return type object not handled*)
(*Not implemented gtk_message_dialog_set_image type object not implemented*)
val set_markup:
  t structure ptr -> string -> unit
