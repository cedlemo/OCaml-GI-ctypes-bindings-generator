open Ctypes

type t
val t_typ : t typ

val create :
  SList.t structure (* Not implemented : interface *) ptr option -> Tool_item.t ptr
val create_from_stock :
  SList.t structure (* Not implemented : interface *) ptr option -> string -> Tool_item.t ptr
val create_from_widget :
  t ptr option -> Tool_item.t ptr
val create_with_stock_from_widget :
  t ptr option -> string -> Tool_item.t ptr
val get_group :
  t -> SList.t structure (* Not implemented : interface *) ptr
val set_group :
  t -> SList.t structure (* Not implemented : interface *) ptr option -> unit
