open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_menu_button_new return type object not handled*)
(*Not implemented gtk_menu_button_get_align_widget return type object not handled*)
let get_direction =
  foreign "gtk_menu_button_get_direction" (ptr t_typ @-> returning (Arrow_type.t_view))
(*Not implemented gtk_menu_button_get_menu_model return type object not handled*)
(*Not implemented gtk_menu_button_get_popover return type object not handled*)
(*Not implemented gtk_menu_button_get_popup return type object not handled*)
let get_use_popover =
  foreign "gtk_menu_button_get_use_popover" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_menu_button_set_align_widget type object not implemented*)
let set_direction =
  foreign "gtk_menu_button_set_direction" (ptr t_typ @-> Arrow_type.t_view @-> returning (void))
(*Not implemented gtk_menu_button_set_menu_model type object not implemented*)
(*Not implemented gtk_menu_button_set_popover type object not implemented*)
(*Not implemented gtk_menu_button_set_popup type object not implemented*)
let set_use_popover =
  foreign "gtk_menu_button_set_use_popover" (ptr t_typ @-> bool @-> returning (void))
