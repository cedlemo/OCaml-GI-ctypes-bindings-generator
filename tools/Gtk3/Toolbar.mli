open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val get_drop_index :
  t -> int32 -> int32 -> int32
val get_icon_size :
  t -> Icon_size.t
val get_item_index :
  t -> Tool_item.t ptr -> int32
val get_n_items :
  t -> int32
val get_nth_item :
  t -> int32 -> Tool_item.t ptr option
val get_relief_style :
  t -> Relief_style.t
val get_show_arrow :
  t -> bool
val get_style :
  t -> Toolbar_style.t
val insert :
  t -> Tool_item.t ptr -> int32 -> unit
val set_drop_highlight_item :
  t -> Tool_item.t ptr option -> int32 -> unit
val set_icon_size :
  t -> Icon_size.t -> unit
val set_show_arrow :
  t -> bool -> unit
val set_style :
  t -> Toolbar_style.t -> unit
val unset_icon_size :
  t -> unit
val unset_style :
  t -> unit
