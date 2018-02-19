open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_cell_area_box_new return type object not handled*)
val get_spacing:
  t structure ptr -> int32
(*Not implemented gtk_cell_area_box_pack_end type object not implemented*)
(*Not implemented gtk_cell_area_box_pack_start type object not implemented*)
val set_spacing:
  t structure ptr -> int32 -> unit
