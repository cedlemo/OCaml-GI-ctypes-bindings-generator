open Ctypes

type t
val t_typ : t typ

(*Not implemented g_menu_item_new return type object not handled*)
(*Not implemented g_menu_item_new_from_model type object not implemented*)
(*Not implemented g_menu_item_new_section type object not implemented*)
(*Not implemented g_menu_item_new_submenu type object not implemented*)
val get_attribute_value:
  t structure ptr -> string -> Variant_type.t structure ptr option -> Variant.t structure ptr
(*Not implemented g_menu_item_get_link return type object not handled*)
val set_action_and_target_value:
  t structure ptr -> string option -> Variant.t structure ptr option -> unit
val set_attribute_value:
  t structure ptr -> string -> Variant.t structure ptr option -> unit
val set_detailed_action:
  t structure ptr -> string -> unit
(*Not implemented g_menu_item_set_icon type interface not implemented*)
val set_label:
  t structure ptr -> string option -> unit
(*Not implemented g_menu_item_set_link type object not implemented*)
(*Not implemented g_menu_item_set_section type object not implemented*)
(*Not implemented g_menu_item_set_submenu type object not implemented*)
