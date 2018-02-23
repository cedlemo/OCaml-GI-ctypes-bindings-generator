open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_cell_area_box_new" (void @-> returning (Cell_area.t_typ))
let get_spacing =
  foreign "gtk_cell_area_box_get_spacing" (t_typ @-> returning (int32_t))
let pack_end =
  foreign "gtk_cell_area_box_pack_end" (t_typ @-> Cell_renderer.t_typ @-> bool @-> bool @-> bool @-> returning (void))
let pack_start =
  foreign "gtk_cell_area_box_pack_start" (t_typ @-> Cell_renderer.t_typ @-> bool @-> bool @-> bool @-> returning (void))
let set_spacing =
  foreign "gtk_cell_area_box_set_spacing" (t_typ @-> int32_t @-> returning (void))
