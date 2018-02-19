open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_menu_item_new return type object not handled*)
(*Not implemented gtk_menu_item_new_with_label return type object not handled*)
(*Not implemented gtk_menu_item_new_with_mnemonic return type object not handled*)
let activate =
  foreign "gtk_menu_item_activate" (ptr t_typ @-> returning (void))
let deselect =
  foreign "gtk_menu_item_deselect" (ptr t_typ @-> returning (void))
let get_accel_path =
  foreign "gtk_menu_item_get_accel_path" (ptr t_typ @-> returning (string_opt))
let get_label =
  foreign "gtk_menu_item_get_label" (ptr t_typ @-> returning (string_opt))
let get_reserve_indicator =
  foreign "gtk_menu_item_get_reserve_indicator" (ptr t_typ @-> returning (bool))
let get_right_justified =
  foreign "gtk_menu_item_get_right_justified" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_menu_item_get_submenu return type object not handled*)
let get_use_underline =
  foreign "gtk_menu_item_get_use_underline" (ptr t_typ @-> returning (bool))
let select =
  foreign "gtk_menu_item_select" (ptr t_typ @-> returning (void))
let set_accel_path =
  foreign "gtk_menu_item_set_accel_path" (ptr t_typ @-> string_opt @-> returning (void))
let set_label =
  foreign "gtk_menu_item_set_label" (ptr t_typ @-> string @-> returning (void))
let set_reserve_indicator =
  foreign "gtk_menu_item_set_reserve_indicator" (ptr t_typ @-> bool @-> returning (void))
let set_right_justified =
  foreign "gtk_menu_item_set_right_justified" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_menu_item_set_submenu type object not implemented*)
let set_use_underline =
  foreign "gtk_menu_item_set_use_underline" (ptr t_typ @-> bool @-> returning (void))
let toggle_size_allocate =
  foreign "gtk_menu_item_toggle_size_allocate" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_menu_item_toggle_size_request - in out argument not handled*)
