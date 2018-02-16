open Ctypes

type t
val t_typ : t typ

val get_item_attribute_value:
  t structure ptr -> int32 -> string -> Variant_type.t structure ptr option -> Variant.t structure ptr
(*Not implemented g_menu_model_get_item_link return type object not handled*)
val get_n_items:
  t structure ptr -> int32
val is_mutable:
  t structure ptr -> bool
val items_changed:
  t structure ptr -> int32 -> int32 -> int32 -> unit
(*Not implemented g_menu_model_iterate_item_attributes return type object not handled*)
(*Not implemented g_menu_model_iterate_item_links return type object not handled*)
