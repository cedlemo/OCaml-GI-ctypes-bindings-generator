open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_item_attribute_value =
  foreign "g_menu_model_get_item_attribute_value" (t_typ @-> int32_t @-> string @-> ptr_opt Variant_type.t_typ @-> returning (ptr Variant.t_typ))
let get_item_link =
  foreign "g_menu_model_get_item_link" (t_typ @-> int32_t @-> string @-> returning (t_typ))
let get_n_items =
  foreign "g_menu_model_get_n_items" (t_typ @-> returning (int32_t))
let is_mutable =
  foreign "g_menu_model_is_mutable" (t_typ @-> returning (bool))
let items_changed =
  foreign "g_menu_model_items_changed" (t_typ @-> int32_t @-> int32_t @-> int32_t @-> returning (void))
let iterate_item_attributes =
  foreign "g_menu_model_iterate_item_attributes" (t_typ @-> int32_t @-> returning (Menu_attribute_iter.t_typ))
let iterate_item_links =
  foreign "g_menu_model_iterate_item_links" (t_typ @-> int32_t @-> returning (Menu_link_iter.t_typ))
