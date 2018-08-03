open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_menu_item_new" (string_opt @-> string_opt @-> returning (ptr t_typ))
let create_from_model =
  foreign "g_menu_item_new_from_model" (ptr Menu_model.t_typ @-> int32_t @-> returning (ptr t_typ))
let create_section =
  foreign "g_menu_item_new_section" (string_opt @-> ptr Menu_model.t_typ @-> returning (ptr t_typ))
let create_submenu =
  foreign "g_menu_item_new_submenu" (string_opt @-> ptr Menu_model.t_typ @-> returning (ptr t_typ))
let get_attribute_value =
  foreign "g_menu_item_get_attribute_value" (t_typ @-> string @-> ptr_opt Variant_type.t_typ @-> returning (ptr Variant.t_typ))
let get_link =
  foreign "g_menu_item_get_link" (t_typ @-> string @-> returning (ptr Menu_model.t_typ))
let set_action_and_target_value =
  foreign "g_menu_item_set_action_and_target_value" (t_typ @-> string_opt @-> ptr_opt Variant.t_typ @-> returning (void))
let set_attribute_value =
  foreign "g_menu_item_set_attribute_value" (t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let set_detailed_action =
  foreign "g_menu_item_set_detailed_action" (t_typ @-> string @-> returning (void))
(*Not implemented g_menu_item_set_icon type interface not implemented*)
let set_label =
  foreign "g_menu_item_set_label" (t_typ @-> string_opt @-> returning (void))
let set_link =
  foreign "g_menu_item_set_link" (t_typ @-> string @-> ptr_opt Menu_model.t_typ @-> returning (void))
let set_section =
  foreign "g_menu_item_set_section" (t_typ @-> ptr_opt Menu_model.t_typ @-> returning (void))
let set_submenu =
  foreign "g_menu_item_set_submenu" (t_typ @-> ptr_opt Menu_model.t_typ @-> returning (void))
