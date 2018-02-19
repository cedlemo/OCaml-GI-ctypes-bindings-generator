open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_list_box_row_new return type object not handled*)
val changed:
  t structure ptr -> unit
val get_activatable:
  t structure ptr -> bool
(*Not implemented gtk_list_box_row_get_header return type object not handled*)
val get_index:
  t structure ptr -> int32
val get_selectable:
  t structure ptr -> bool
val is_selected:
  t structure ptr -> bool
val set_activatable:
  t structure ptr -> bool -> unit
(*Not implemented gtk_list_box_row_set_header type object not implemented*)
val set_selectable:
  t structure ptr -> bool -> unit
