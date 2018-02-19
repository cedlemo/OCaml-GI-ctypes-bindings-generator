open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tooltip_trigger_tooltip_query type object not implemented*)
(*Not implemented gtk_tooltip_set_custom type object not implemented*)
(*Not implemented gtk_tooltip_set_icon type object not implemented*)
(*Not implemented gtk_tooltip_set_icon_from_gicon type interface not implemented*)
val set_icon_from_icon_name:
  t structure ptr -> string option -> int32 -> unit
val set_icon_from_stock:
  t structure ptr -> string option -> int32 -> unit
val set_markup:
  t structure ptr -> string option -> unit
val set_text:
  t structure ptr -> string option -> unit
val set_tip_area:
  t structure ptr -> Rectangle.t structure ptr -> unit
