open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_cell_renderer_toggle_new" (void @-> returning (Cell_renderer.t_typ))
let get_activatable =
  foreign "gtk_cell_renderer_toggle_get_activatable" (t_typ @-> returning (bool))
let get_active =
  foreign "gtk_cell_renderer_toggle_get_active" (t_typ @-> returning (bool))
let get_radio =
  foreign "gtk_cell_renderer_toggle_get_radio" (t_typ @-> returning (bool))
let set_activatable =
  foreign "gtk_cell_renderer_toggle_set_activatable" (t_typ @-> bool @-> returning (void))
let set_active =
  foreign "gtk_cell_renderer_toggle_set_active" (t_typ @-> bool @-> returning (void))
let set_radio =
  foreign "gtk_cell_renderer_toggle_set_radio" (t_typ @-> bool @-> returning (void))
