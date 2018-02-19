open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_image_menu_item_new return type object not handled*)
(*Not implemented gtk_image_menu_item_new_from_stock type object not implemented*)
(*Not implemented gtk_image_menu_item_new_with_label return type object not handled*)
(*Not implemented gtk_image_menu_item_new_with_mnemonic return type object not handled*)
val get_always_show_image:
  t structure ptr -> bool
(*Not implemented gtk_image_menu_item_get_image return type object not handled*)
val get_use_stock:
  t structure ptr -> bool
(*Not implemented gtk_image_menu_item_set_accel_group type object not implemented*)
val set_always_show_image:
  t structure ptr -> bool -> unit
(*Not implemented gtk_image_menu_item_set_image type object not implemented*)
val set_use_stock:
  t structure ptr -> bool -> unit
