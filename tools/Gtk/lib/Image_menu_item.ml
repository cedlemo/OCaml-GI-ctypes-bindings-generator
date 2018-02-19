open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_image_menu_item_new return type object not handled*)
(*Not implemented gtk_image_menu_item_new_from_stock type object not implemented*)
(*Not implemented gtk_image_menu_item_new_with_label return type object not handled*)
(*Not implemented gtk_image_menu_item_new_with_mnemonic return type object not handled*)
let get_always_show_image =
  foreign "gtk_image_menu_item_get_always_show_image" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_image_menu_item_get_image return type object not handled*)
let get_use_stock =
  foreign "gtk_image_menu_item_get_use_stock" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_image_menu_item_set_accel_group type object not implemented*)
let set_always_show_image =
  foreign "gtk_image_menu_item_set_always_show_image" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_image_menu_item_set_image type object not implemented*)
let set_use_stock =
  foreign "gtk_image_menu_item_set_use_stock" (ptr t_typ @-> bool @-> returning (void))
