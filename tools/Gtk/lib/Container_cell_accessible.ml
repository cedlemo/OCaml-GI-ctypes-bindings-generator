open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_container_cell_accessible_new return type object not handled*)
(*Not implemented gtk_container_cell_accessible_add_child type object not implemented*)
let get_children =
  foreign "gtk_container_cell_accessible_get_children" (ptr t_typ @-> returning (ptr List.t_typ))
(*Not implemented gtk_container_cell_accessible_remove_child type object not implemented*)
