open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_flow_box_child_new return type object not handled*)
val changed:
  t structure ptr -> unit
val get_index:
  t structure ptr -> int32
val is_selected:
  t structure ptr -> bool
