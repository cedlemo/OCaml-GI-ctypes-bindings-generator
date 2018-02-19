open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_button_new return type object not handled*)
(*Not implemented gtk_button_new_from_icon_name return type object not handled*)
(*Not implemented gtk_button_new_from_stock return type object not handled*)
(*Not implemented gtk_button_new_with_label return type object not handled*)
(*Not implemented gtk_button_new_with_mnemonic return type object not handled*)
val clicked:
  t structure ptr -> unit
val enter:
  t structure ptr -> unit
val get_alignment :
  t structure ptr -> (float * float)
val get_always_show_image:
  t structure ptr -> bool
(*Not implemented gtk_button_get_event_window return type object not handled*)
val get_focus_on_click:
  t structure ptr -> bool
(*Not implemented gtk_button_get_image return type object not handled*)
val get_image_position:
  t structure ptr -> Position_type.t
val get_label:
  t structure ptr -> string option
val get_relief:
  t structure ptr -> Relief_style.t
val get_use_stock:
  t structure ptr -> bool
val get_use_underline:
  t structure ptr -> bool
val leave:
  t structure ptr -> unit
val pressed:
  t structure ptr -> unit
val released:
  t structure ptr -> unit
val set_alignment:
  t structure ptr -> float -> float -> unit
val set_always_show_image:
  t structure ptr -> bool -> unit
val set_focus_on_click:
  t structure ptr -> bool -> unit
(*Not implemented gtk_button_set_image type object not implemented*)
val set_image_position:
  t structure ptr -> Position_type.t -> unit
val set_label:
  t structure ptr -> string -> unit
val set_relief:
  t structure ptr -> Relief_style.t -> unit
val set_use_stock:
  t structure ptr -> bool -> unit
val set_use_underline:
  t structure ptr -> bool -> unit
