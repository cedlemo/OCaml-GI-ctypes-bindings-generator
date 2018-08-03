open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_check_menu_item_new" (void @-> returning (ptr Widget.t_typ))
let create_with_label =
  foreign "gtk_check_menu_item_new_with_label" (string @-> returning (ptr Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_check_menu_item_new_with_mnemonic" (string @-> returning (ptr Widget.t_typ))
let get_active =
  foreign "gtk_check_menu_item_get_active" (t_typ @-> returning (bool))
let get_draw_as_radio =
  foreign "gtk_check_menu_item_get_draw_as_radio" (t_typ @-> returning (bool))
let get_inconsistent =
  foreign "gtk_check_menu_item_get_inconsistent" (t_typ @-> returning (bool))
let set_active =
  foreign "gtk_check_menu_item_set_active" (t_typ @-> bool @-> returning (void))
let set_draw_as_radio =
  foreign "gtk_check_menu_item_set_draw_as_radio" (t_typ @-> bool @-> returning (void))
let set_inconsistent =
  foreign "gtk_check_menu_item_set_inconsistent" (t_typ @-> bool @-> returning (void))
let toggled =
  foreign "gtk_check_menu_item_toggled" (t_typ @-> returning (void))
