open Ctypes

type t
val t_typ : t typ

val create :
  Widget.t -> string option -> Tool_item.t
val create_from_stock :
  string -> Tool_item.t
val get_icon_name :
  t -> string option
val get_icon_widget :
  t -> Widget.t
val get_label :
  t -> string option
val get_label_widget :
  t -> Widget.t
val get_stock_id :
  t -> string option
val get_use_underline :
  t -> bool
val set_icon_name :
  t -> string option -> unit
val set_icon_widget :
  t -> Widget.t -> unit
val set_label :
  t -> string option -> unit
val set_label_widget :
  t -> Widget.t -> unit
val set_stock_id :
  t -> string option -> unit
val set_use_underline :
  t -> bool -> unit
