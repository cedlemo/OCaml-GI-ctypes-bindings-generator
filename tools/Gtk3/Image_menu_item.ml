open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_image_menu_item_new" (void @-> returning (Widget.t_typ))
let create_from_stock =
  foreign "gtk_image_menu_item_new_from_stock" (string @-> Accel_group.t_typ @-> returning (Widget.t_typ))
let create_with_label =
  foreign "gtk_image_menu_item_new_with_label" (string @-> returning (Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_image_menu_item_new_with_mnemonic" (string @-> returning (Widget.t_typ))
let get_always_show_image =
  foreign "gtk_image_menu_item_get_always_show_image" (t_typ @-> returning (bool))
let get_image =
  foreign "gtk_image_menu_item_get_image" (t_typ @-> returning (Widget.t_typ))
let get_use_stock =
  foreign "gtk_image_menu_item_get_use_stock" (t_typ @-> returning (bool))
let set_accel_group =
  foreign "gtk_image_menu_item_set_accel_group" (t_typ @-> Accel_group.t_typ @-> returning (void))
let set_always_show_image =
  foreign "gtk_image_menu_item_set_always_show_image" (t_typ @-> bool @-> returning (void))
let set_image =
  foreign "gtk_image_menu_item_set_image" (t_typ @-> Widget.t_typ @-> returning (void))
let set_use_stock =
  foreign "gtk_image_menu_item_set_use_stock" (t_typ @-> bool @-> returning (void))
