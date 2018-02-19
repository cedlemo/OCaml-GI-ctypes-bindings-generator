open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_app_chooser_dialog_new type object not implemented*)
(*Not implemented gtk_app_chooser_dialog_new_for_content_type type object not implemented*)
val get_heading:
  t structure ptr -> string option
(*Not implemented gtk_app_chooser_dialog_get_widget return type object not handled*)
val set_heading:
  t structure ptr -> string -> unit
