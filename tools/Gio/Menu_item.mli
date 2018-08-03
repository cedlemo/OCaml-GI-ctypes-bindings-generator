open Ctypes

type t
val t_typ : t typ

val create :
  string option -> string option -> t ptr
val create_from_model :
  Menu_model.t ptr -> int32 -> t ptr
val create_section :
  string option -> Menu_model.t ptr -> t ptr
val create_submenu :
  string option -> Menu_model.t ptr -> t ptr
val get_attribute_value :
  t -> string -> Variant_type.t structure ptr option -> Variant.t structure ptr
val get_link :
  t -> string -> Menu_model.t ptr
val set_action_and_target_value :
  t -> string option -> Variant.t structure ptr option -> unit
val set_attribute_value :
  t -> string -> Variant.t structure ptr option -> unit
val set_detailed_action :
  t -> string -> unit
(*Not implemented g_menu_item_set_icon type interface not implemented*)
val set_label :
  t -> string option -> unit
val set_link :
  t -> string -> Menu_model.t ptr option -> unit
val set_section :
  t -> Menu_model.t ptr option -> unit
val set_submenu :
  t -> Menu_model.t ptr option -> unit
