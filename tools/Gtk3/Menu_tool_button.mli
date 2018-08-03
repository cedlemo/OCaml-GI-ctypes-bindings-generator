open Ctypes

type t
val t_typ : t typ

val create :
  Widget.t ptr option -> string option -> Tool_item.t ptr
val create_from_stock :
  string -> Tool_item.t ptr
val get_menu :
  t -> Widget.t ptr
val set_arrow_tooltip_markup :
  t -> string -> unit
val set_arrow_tooltip_text :
  t -> string -> unit
val set_menu :
  t -> Widget.t ptr -> unit
