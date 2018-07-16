open Ctypes

type t
val t_typ : t typ

val create :
  SList.t structure (* Radio_button.t *) ptr option -> Tool_item.t
val create_from_stock :
  SList.t structure (* Radio_button.t *) ptr option -> string -> Tool_item.t
val create_from_widget :
  t -> Tool_item.t
val create_with_stock_from_widget :
  t -> string -> Tool_item.t
val get_group :
  t -> SList.t structure (* Radio_button.t *) ptr
val set_group :
  t -> SList.t structure (* Radio_button.t *) ptr option -> unit
