open Ctypes

type t
val t_typ : t typ

val create :
  string -> Widget.t ptr
val get_collapsed :
  t -> bool
val get_drop_item :
  t -> int32 -> int32 -> Tool_item.t ptr
val get_ellipsize :
  t -> Ellipsize_mode.t
val get_header_relief :
  t -> Relief_style.t
val get_item_position :
  t -> Tool_item.t ptr -> int32
val get_label :
  t -> string option
val get_label_widget :
  t -> Widget.t ptr
val get_n_items :
  t -> Unsigned.uint32
val get_nth_item :
  t -> Unsigned.uint32 -> Tool_item.t ptr
val insert :
  t -> Tool_item.t ptr -> int32 -> unit
val set_collapsed :
  t -> bool -> unit
val set_ellipsize :
  t -> Ellipsize_mode.t -> unit
val set_header_relief :
  t -> Relief_style.t -> unit
val set_item_position :
  t -> Tool_item.t ptr -> int32 -> unit
val set_label :
  t -> string -> unit
val set_label_widget :
  t -> Widget.t ptr -> unit
