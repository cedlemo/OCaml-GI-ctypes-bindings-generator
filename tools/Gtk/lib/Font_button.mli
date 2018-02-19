open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_font_button_new return type object not handled*)
(*Not implemented gtk_font_button_new_with_font return type object not handled*)
val get_font_name:
  t structure ptr -> string option
val get_show_size:
  t structure ptr -> bool
val get_show_style:
  t structure ptr -> bool
val get_title:
  t structure ptr -> string option
val get_use_font:
  t structure ptr -> bool
val get_use_size:
  t structure ptr -> bool
val set_font_name:
  t structure ptr -> string -> bool
val set_show_size:
  t structure ptr -> bool -> unit
val set_show_style:
  t structure ptr -> bool -> unit
val set_title:
  t structure ptr -> string -> unit
val set_use_font:
  t structure ptr -> bool -> unit
val set_use_size:
  t structure ptr -> bool -> unit
