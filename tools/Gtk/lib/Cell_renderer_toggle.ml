open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_renderer_toggle_new return type object not handled*)
let get_activatable =
  foreign "gtk_cell_renderer_toggle_get_activatable" (ptr t_typ @-> returning (bool))
let get_active =
  foreign "gtk_cell_renderer_toggle_get_active" (ptr t_typ @-> returning (bool))
let get_radio =
  foreign "gtk_cell_renderer_toggle_get_radio" (ptr t_typ @-> returning (bool))
let set_activatable =
  foreign "gtk_cell_renderer_toggle_set_activatable" (ptr t_typ @-> bool @-> returning (void))
let set_active =
  foreign "gtk_cell_renderer_toggle_set_active" (ptr t_typ @-> bool @-> returning (void))
let set_radio =
  foreign "gtk_cell_renderer_toggle_set_radio" (ptr t_typ @-> bool @-> returning (void))
