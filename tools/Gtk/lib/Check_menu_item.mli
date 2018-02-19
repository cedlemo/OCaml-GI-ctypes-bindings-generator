open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_check_menu_item_new return type object not handled*)
(*Not implemented gtk_check_menu_item_new_with_label return type object not handled*)
(*Not implemented gtk_check_menu_item_new_with_mnemonic return type object not handled*)
val get_active:
  t structure ptr -> bool
val get_draw_as_radio:
  t structure ptr -> bool
val get_inconsistent:
  t structure ptr -> bool
val set_active:
  t structure ptr -> bool -> unit
val set_draw_as_radio:
  t structure ptr -> bool -> unit
val set_inconsistent:
  t structure ptr -> bool -> unit
val toggled:
  t structure ptr -> unit
