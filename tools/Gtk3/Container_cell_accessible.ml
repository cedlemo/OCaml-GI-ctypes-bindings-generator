open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_container_cell_accessible_new" (void @-> returning (ptr t_typ))
let add_child =
  foreign "gtk_container_cell_accessible_add_child" (t_typ @-> ptr Cell_accessible.t_typ @-> returning (void))
let get_children =
  foreign "gtk_container_cell_accessible_get_children" (t_typ @-> returning (ptr List.t_typ))
let remove_child =
  foreign "gtk_container_cell_accessible_remove_child" (t_typ @-> ptr Cell_accessible.t_typ @-> returning (void))
