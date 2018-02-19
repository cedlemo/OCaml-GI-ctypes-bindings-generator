open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_header_bar_new return type object not handled*)
(*Not implemented gtk_header_bar_get_custom_title return type object not handled*)
val get_decoration_layout:
  t structure ptr -> string option
val get_has_subtitle:
  t structure ptr -> bool
val get_show_close_button:
  t structure ptr -> bool
val get_subtitle:
  t structure ptr -> string option
val get_title:
  t structure ptr -> string option
(*Not implemented gtk_header_bar_pack_end type object not implemented*)
(*Not implemented gtk_header_bar_pack_start type object not implemented*)
(*Not implemented gtk_header_bar_set_custom_title type object not implemented*)
val set_decoration_layout:
  t structure ptr -> string option -> unit
val set_has_subtitle:
  t structure ptr -> bool -> unit
val set_show_close_button:
  t structure ptr -> bool -> unit
val set_subtitle:
  t structure ptr -> string option -> unit
val set_title:
  t structure ptr -> string option -> unit
