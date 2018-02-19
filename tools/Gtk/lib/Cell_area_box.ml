open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_area_box_new return type object not handled*)
let get_spacing =
  foreign "gtk_cell_area_box_get_spacing" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_cell_area_box_pack_end type object not implemented*)
(*Not implemented gtk_cell_area_box_pack_start type object not implemented*)
let set_spacing =
  foreign "gtk_cell_area_box_set_spacing" (ptr t_typ @-> int32_t @-> returning (void))
