open Ctypes

type t
val t_typ : t typ

val create :
  SList.t structure ptr option -> Tool_item.t
val create_from_stock :
  SList.t structure ptr option -> string -> Tool_item.t
val create_from_widget :
  t -> Tool_item.t
val create_with_stock_from_widget :
  t -> string -> Tool_item.t
val get_group :
  t -> SList.t structure ptr
val set_group :
  t -> SList.t structure ptr option -> unit
