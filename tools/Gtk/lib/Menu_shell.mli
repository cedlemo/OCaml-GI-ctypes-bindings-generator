open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_menu_shell_activate_item type object not implemented*)
(*Not implemented gtk_menu_shell_append type object not implemented*)
(*Not implemented gtk_menu_shell_bind_model type object not implemented*)
val cancel:
  t structure ptr -> unit
val deactivate:
  t structure ptr -> unit
val deselect:
  t structure ptr -> unit
(*Not implemented gtk_menu_shell_get_parent_shell return type object not handled*)
(*Not implemented gtk_menu_shell_get_selected_item return type object not handled*)
val get_take_focus:
  t structure ptr -> bool
(*Not implemented gtk_menu_shell_insert type object not implemented*)
(*Not implemented gtk_menu_shell_prepend type object not implemented*)
val select_first:
  t structure ptr -> bool -> unit
(*Not implemented gtk_menu_shell_select_item type object not implemented*)
val set_take_focus:
  t structure ptr -> bool -> unit
