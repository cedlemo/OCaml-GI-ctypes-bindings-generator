open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_color_button_new return type object not handled*)
(*Not implemented gtk_color_button_new_with_color return type object not handled*)
(*Not implemented gtk_color_button_new_with_rgba return type object not handled*)
val get_alpha:
  t structure ptr -> Unsigned.uint16
val get_color :
  t structure ptr -> (Color.t structure)
val get_title:
  t structure ptr -> string option
val get_use_alpha:
  t structure ptr -> bool
val set_alpha:
  t structure ptr -> Unsigned.uint16 -> unit
val set_color:
  t structure ptr -> Color.t structure ptr -> unit
val set_title:
  t structure ptr -> string -> unit
val set_use_alpha:
  t structure ptr -> bool -> unit
