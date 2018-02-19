open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_box_new return type object not handled*)
let get_baseline_position =
  foreign "gtk_box_get_baseline_position" (ptr t_typ @-> returning (Baseline_position.t_view))
(*Not implemented gtk_box_get_center_widget return type object not handled*)
let get_homogeneous =
  foreign "gtk_box_get_homogeneous" (ptr t_typ @-> returning (bool))
let get_spacing =
  foreign "gtk_box_get_spacing" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_box_pack_end type object not implemented*)
(*Not implemented gtk_box_pack_start type object not implemented*)
(*Not implemented gtk_box_query_child_packing type object not implemented*)
(*Not implemented gtk_box_reorder_child type object not implemented*)
let set_baseline_position =
  foreign "gtk_box_set_baseline_position" (ptr t_typ @-> Baseline_position.t_view @-> returning (void))
(*Not implemented gtk_box_set_center_widget type object not implemented*)
(*Not implemented gtk_box_set_child_packing type object not implemented*)
let set_homogeneous =
  foreign "gtk_box_set_homogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_spacing =
  foreign "gtk_box_set_spacing" (ptr t_typ @-> int32_t @-> returning (void))
