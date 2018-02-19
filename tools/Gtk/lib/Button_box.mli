open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_button_box_new return type object not handled*)
(*Not implemented gtk_button_box_get_child_non_homogeneous type object not implemented*)
(*Not implemented gtk_button_box_get_child_secondary type object not implemented*)
val get_layout:
  t structure ptr -> Button_box_style.t
(*Not implemented gtk_button_box_set_child_non_homogeneous type object not implemented*)
(*Not implemented gtk_button_box_set_child_secondary type object not implemented*)
val set_layout:
  t structure ptr -> Button_box_style.t -> unit
