open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_button_box_new return type object not handled*)
(*Not implemented gtk_button_box_get_child_non_homogeneous type object not implemented*)
(*Not implemented gtk_button_box_get_child_secondary type object not implemented*)
let get_layout =
  foreign "gtk_button_box_get_layout" (ptr t_typ @-> returning (Button_box_style.t_view))
(*Not implemented gtk_button_box_set_child_non_homogeneous type object not implemented*)
(*Not implemented gtk_button_box_set_child_secondary type object not implemented*)
let set_layout =
  foreign "gtk_button_box_set_layout" (ptr t_typ @-> Button_box_style.t_view @-> returning (void))
