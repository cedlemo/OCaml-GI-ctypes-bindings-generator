open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_radio_menu_item_new return type object not handled*)
(*Not implemented gtk_radio_menu_item_new_from_widget type object not implemented*)
(*Not implemented gtk_radio_menu_item_new_with_label return type object not handled*)
(*Not implemented gtk_radio_menu_item_new_with_label_from_widget type object not implemented*)
(*Not implemented gtk_radio_menu_item_new_with_mnemonic return type object not handled*)
(*Not implemented gtk_radio_menu_item_new_with_mnemonic_from_widget type object not implemented*)
let get_group =
  foreign "gtk_radio_menu_item_get_group" (ptr t_typ @-> returning (ptr SList.t_typ))
(*Not implemented gtk_radio_menu_item_join_group type object not implemented*)
let set_group =
  foreign "gtk_radio_menu_item_set_group" (ptr t_typ @-> ptr_opt SList.t_typ @-> returning (void))
