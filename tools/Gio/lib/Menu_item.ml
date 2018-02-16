open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_menu_item_new return type object not handled*)
(*Not implemented g_menu_item_new_from_model type object not implemented*)
(*Not implemented g_menu_item_new_section type object not implemented*)
(*Not implemented g_menu_item_new_submenu type object not implemented*)
let get_attribute_value =
  foreign "g_menu_item_get_attribute_value" (ptr t_typ @-> string @-> ptr_opt Variant_type.t_typ @-> returning (ptr Variant.t_typ))
(*Not implemented g_menu_item_get_link return type object not handled*)
let set_action_and_target_value =
  foreign "g_menu_item_set_action_and_target_value" (ptr t_typ @-> string_opt @-> ptr_opt Variant.t_typ @-> returning (void))
let set_attribute_value =
  foreign "g_menu_item_set_attribute_value" (ptr t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let set_detailed_action =
  foreign "g_menu_item_set_detailed_action" (ptr t_typ @-> string @-> returning (void))
(*Not implemented g_menu_item_set_icon type interface not implemented*)
let set_label =
  foreign "g_menu_item_set_label" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented g_menu_item_set_link type object not implemented*)
(*Not implemented g_menu_item_set_section type object not implemented*)
(*Not implemented g_menu_item_set_submenu type object not implemented*)
