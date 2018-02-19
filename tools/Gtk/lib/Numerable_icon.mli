open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_numerable_icon_new type interface not implemented*)
(*Not implemented gtk_numerable_icon_new_with_style_context type interface not implemented*)
(*Not implemented gtk_numerable_icon_get_background_gicon return type interface not handled*)
val get_background_icon_name:
  t structure ptr -> string option
val get_count:
  t structure ptr -> int32
val get_label:
  t structure ptr -> string option
(*Not implemented gtk_numerable_icon_get_style_context return type object not handled*)
(*Not implemented gtk_numerable_icon_set_background_gicon type interface not implemented*)
val set_background_icon_name:
  t structure ptr -> string option -> unit
val set_count:
  t structure ptr -> int32 -> unit
val set_label:
  t structure ptr -> string option -> unit
(*Not implemented gtk_numerable_icon_set_style_context type object not implemented*)
