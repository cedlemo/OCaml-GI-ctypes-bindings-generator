open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_menu_button_new return type object not handled*)
(*Not implemented gtk_menu_button_get_align_widget return type object not handled*)
val get_direction:
  t structure ptr -> Arrow_type.t
(*Not implemented gtk_menu_button_get_menu_model return type object not handled*)
(*Not implemented gtk_menu_button_get_popover return type object not handled*)
(*Not implemented gtk_menu_button_get_popup return type object not handled*)
val get_use_popover:
  t structure ptr -> bool
(*Not implemented gtk_menu_button_set_align_widget type object not implemented*)
val set_direction:
  t structure ptr -> Arrow_type.t -> unit
(*Not implemented gtk_menu_button_set_menu_model type object not implemented*)
(*Not implemented gtk_menu_button_set_popover type object not implemented*)
(*Not implemented gtk_menu_button_set_popup type object not implemented*)
val set_use_popover:
  t structure ptr -> bool -> unit
