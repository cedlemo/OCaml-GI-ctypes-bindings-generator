open Ctypes

type t
val t_typ : t typ

val get_item_attribute_value :
  t -> int32 -> string -> Variant_type.t structure ptr option -> Variant.t structure ptr
val get_item_link :
  t -> int32 -> string -> t
val get_n_items :
  t -> int32
val is_mutable :
  t -> bool
val items_changed :
  t -> int32 -> int32 -> int32 -> unit
val iterate_item_attributes :
  t -> int32 -> Menu_attribute_iter.t
val iterate_item_links :
  t -> int32 -> Menu_link_iter.t
