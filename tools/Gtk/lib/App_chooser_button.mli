open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_app_chooser_button_new return type object not handled*)
(*Not implemented gtk_app_chooser_button_append_custom_item type interface not implemented*)
val append_separator:
  t structure ptr -> unit
val get_heading:
  t structure ptr -> string option
val get_show_default_item:
  t structure ptr -> bool
val get_show_dialog_item:
  t structure ptr -> bool
val set_active_custom_item:
  t structure ptr -> string -> unit
val set_heading:
  t structure ptr -> string -> unit
val set_show_default_item:
  t structure ptr -> bool -> unit
val set_show_dialog_item:
  t structure ptr -> bool -> unit
