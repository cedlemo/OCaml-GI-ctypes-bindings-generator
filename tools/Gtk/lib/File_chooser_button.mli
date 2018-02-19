open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_file_chooser_button_new return type object not handled*)
(*Not implemented gtk_file_chooser_button_new_with_dialog type object not implemented*)
val get_focus_on_click:
  t structure ptr -> bool
val get_title:
  t structure ptr -> string option
val get_width_chars:
  t structure ptr -> int32
val set_focus_on_click:
  t structure ptr -> bool -> unit
val set_title:
  t structure ptr -> string -> unit
val set_width_chars:
  t structure ptr -> int32 -> unit
