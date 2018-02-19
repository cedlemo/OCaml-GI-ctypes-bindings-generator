open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_check_menu_item_new return type object not handled*)
(*Not implemented gtk_check_menu_item_new_with_label return type object not handled*)
(*Not implemented gtk_check_menu_item_new_with_mnemonic return type object not handled*)
let get_active =
  foreign "gtk_check_menu_item_get_active" (ptr t_typ @-> returning (bool))
let get_draw_as_radio =
  foreign "gtk_check_menu_item_get_draw_as_radio" (ptr t_typ @-> returning (bool))
let get_inconsistent =
  foreign "gtk_check_menu_item_get_inconsistent" (ptr t_typ @-> returning (bool))
let set_active =
  foreign "gtk_check_menu_item_set_active" (ptr t_typ @-> bool @-> returning (void))
let set_draw_as_radio =
  foreign "gtk_check_menu_item_set_draw_as_radio" (ptr t_typ @-> bool @-> returning (void))
let set_inconsistent =
  foreign "gtk_check_menu_item_set_inconsistent" (ptr t_typ @-> bool @-> returning (void))
let toggled =
  foreign "gtk_check_menu_item_toggled" (ptr t_typ @-> returning (void))
