open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_list_box_row_new return type object not handled*)
let changed =
  foreign "gtk_list_box_row_changed" (ptr t_typ @-> returning (void))
let get_activatable =
  foreign "gtk_list_box_row_get_activatable" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_list_box_row_get_header return type object not handled*)
let get_index =
  foreign "gtk_list_box_row_get_index" (ptr t_typ @-> returning (int32_t))
let get_selectable =
  foreign "gtk_list_box_row_get_selectable" (ptr t_typ @-> returning (bool))
let is_selected =
  foreign "gtk_list_box_row_is_selected" (ptr t_typ @-> returning (bool))
let set_activatable =
  foreign "gtk_list_box_row_set_activatable" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_list_box_row_set_header type object not implemented*)
let set_selectable =
  foreign "gtk_list_box_row_set_selectable" (ptr t_typ @-> bool @-> returning (void))
