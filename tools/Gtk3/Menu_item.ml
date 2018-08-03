open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_menu_item_new" (void @-> returning (ptr Widget.t_typ))
let create_with_label =
  foreign "gtk_menu_item_new_with_label" (string @-> returning (ptr Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_menu_item_new_with_mnemonic" (string @-> returning (ptr Widget.t_typ))
let activate =
  foreign "gtk_menu_item_activate" (t_typ @-> returning (void))
let deselect =
  foreign "gtk_menu_item_deselect" (t_typ @-> returning (void))
let get_accel_path =
  foreign "gtk_menu_item_get_accel_path" (t_typ @-> returning (string_opt))
let get_label =
  foreign "gtk_menu_item_get_label" (t_typ @-> returning (string_opt))
let get_reserve_indicator =
  foreign "gtk_menu_item_get_reserve_indicator" (t_typ @-> returning (bool))
let get_right_justified =
  foreign "gtk_menu_item_get_right_justified" (t_typ @-> returning (bool))
let get_submenu =
  foreign "gtk_menu_item_get_submenu" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_use_underline =
  foreign "gtk_menu_item_get_use_underline" (t_typ @-> returning (bool))
let select =
  foreign "gtk_menu_item_select" (t_typ @-> returning (void))
let set_accel_path =
  foreign "gtk_menu_item_set_accel_path" (t_typ @-> string_opt @-> returning (void))
let set_label =
  foreign "gtk_menu_item_set_label" (t_typ @-> string @-> returning (void))
let set_reserve_indicator =
  foreign "gtk_menu_item_set_reserve_indicator" (t_typ @-> bool @-> returning (void))
let set_right_justified =
  foreign "gtk_menu_item_set_right_justified" (t_typ @-> bool @-> returning (void))
let set_submenu =
  foreign "gtk_menu_item_set_submenu" (t_typ @-> ptr_opt Menu.t_typ @-> returning (void))
let set_use_underline =
  foreign "gtk_menu_item_set_use_underline" (t_typ @-> bool @-> returning (void))
let toggle_size_allocate =
  foreign "gtk_menu_item_toggle_size_allocate" (t_typ @-> int32_t @-> returning (void))
let toggle_size_request self requisition =
  let toggle_size_request_raw =
    foreign "gtk_menu_item_toggle_size_request" (t_typ @-> ptr (int32_t) @-> returning (void))
  in
  let requisition_ptr = allocate int32_t requisition in
  let ret = toggle_size_request_raw self requisition_ptr in
  let requisition = !@ requisition_ptr in
  (requisition)
