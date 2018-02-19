open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_container_cell_accessible_new return type object not handled*)
(*Not implemented gtk_container_cell_accessible_add_child type object not implemented*)
val get_children:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_container_cell_accessible_remove_child type object not implemented*)
