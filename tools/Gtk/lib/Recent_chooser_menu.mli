open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_recent_chooser_menu_new return type object not handled*)
(*Not implemented gtk_recent_chooser_menu_new_for_manager type object not implemented*)
val get_show_numbers:
  t structure ptr -> bool
val set_show_numbers:
  t structure ptr -> bool -> unit
