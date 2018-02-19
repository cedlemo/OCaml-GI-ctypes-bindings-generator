open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_menu_shell_activate_item type object not implemented*)
(*Not implemented gtk_menu_shell_append type object not implemented*)
(*Not implemented gtk_menu_shell_bind_model type object not implemented*)
let cancel =
  foreign "gtk_menu_shell_cancel" (ptr t_typ @-> returning (void))
let deactivate =
  foreign "gtk_menu_shell_deactivate" (ptr t_typ @-> returning (void))
let deselect =
  foreign "gtk_menu_shell_deselect" (ptr t_typ @-> returning (void))
(*Not implemented gtk_menu_shell_get_parent_shell return type object not handled*)
(*Not implemented gtk_menu_shell_get_selected_item return type object not handled*)
let get_take_focus =
  foreign "gtk_menu_shell_get_take_focus" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_menu_shell_insert type object not implemented*)
(*Not implemented gtk_menu_shell_prepend type object not implemented*)
let select_first =
  foreign "gtk_menu_shell_select_first" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_menu_shell_select_item type object not implemented*)
let set_take_focus =
  foreign "gtk_menu_shell_set_take_focus" (ptr t_typ @-> bool @-> returning (void))
