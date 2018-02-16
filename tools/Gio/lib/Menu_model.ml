open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_item_attribute_value =
  foreign "g_menu_model_get_item_attribute_value" (ptr t_typ @-> int32_t @-> string @-> ptr_opt Variant_type.t_typ @-> returning (ptr Variant.t_typ))
(*Not implemented g_menu_model_get_item_link return type object not handled*)
let get_n_items =
  foreign "g_menu_model_get_n_items" (ptr t_typ @-> returning (int32_t))
let is_mutable =
  foreign "g_menu_model_is_mutable" (ptr t_typ @-> returning (bool))
let items_changed =
  foreign "g_menu_model_items_changed" (ptr t_typ @-> int32_t @-> int32_t @-> int32_t @-> returning (void))
(*Not implemented g_menu_model_iterate_item_attributes return type object not handled*)
(*Not implemented g_menu_model_iterate_item_links return type object not handled*)
