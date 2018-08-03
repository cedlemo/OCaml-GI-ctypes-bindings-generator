open Ctypes

type t
val t_typ : t typ

val trigger_tooltip_query :
  Display.t ptr -> unit
val set_custom :
  t -> Widget.t ptr option -> unit
val set_icon :
  t -> Pixbuf.t ptr option -> unit
(*Not implemented gtk_tooltip_set_icon_from_gicon type interface not implemented*)
val set_icon_from_icon_name :
  t -> string option -> int32 -> unit
val set_icon_from_stock :
  t -> string option -> int32 -> unit
val set_markup :
  t -> string option -> unit
val set_text :
  t -> string option -> unit
val set_tip_area :
  t -> Rectangle.t structure ptr -> unit
