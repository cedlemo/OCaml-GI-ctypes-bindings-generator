open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_box_new return type object not handled*)
val get_baseline_position:
  t structure ptr -> Baseline_position.t
(*Not implemented gtk_box_get_center_widget return type object not handled*)
val get_homogeneous:
  t structure ptr -> bool
val get_spacing:
  t structure ptr -> int32
(*Not implemented gtk_box_pack_end type object not implemented*)
(*Not implemented gtk_box_pack_start type object not implemented*)
(*Not implemented gtk_box_query_child_packing type object not implemented*)
(*Not implemented gtk_box_reorder_child type object not implemented*)
val set_baseline_position:
  t structure ptr -> Baseline_position.t -> unit
(*Not implemented gtk_box_set_center_widget type object not implemented*)
(*Not implemented gtk_box_set_child_packing type object not implemented*)
val set_homogeneous:
  t structure ptr -> bool -> unit
val set_spacing:
  t structure ptr -> int32 -> unit
