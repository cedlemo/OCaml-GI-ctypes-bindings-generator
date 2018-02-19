open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_grid_new return type object not handled*)
(*Not implemented gtk_grid_attach type object not implemented*)
(*Not implemented gtk_grid_attach_next_to type object not implemented*)
val get_baseline_row:
  t structure ptr -> int32
(*Not implemented gtk_grid_get_child_at return type object not handled*)
val get_column_homogeneous:
  t structure ptr -> bool
val get_column_spacing:
  t structure ptr -> Unsigned.uint32
val get_row_baseline_position:
  t structure ptr -> int32 -> Baseline_position.t
val get_row_homogeneous:
  t structure ptr -> bool
val get_row_spacing:
  t structure ptr -> Unsigned.uint32
val insert_column:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_grid_insert_next_to type object not implemented*)
val insert_row:
  t structure ptr -> int32 -> unit
val remove_column:
  t structure ptr -> int32 -> unit
val remove_row:
  t structure ptr -> int32 -> unit
val set_baseline_row:
  t structure ptr -> int32 -> unit
val set_column_homogeneous:
  t structure ptr -> bool -> unit
val set_column_spacing:
  t structure ptr -> Unsigned.uint32 -> unit
val set_row_baseline_position:
  t structure ptr -> int32 -> Baseline_position.t -> unit
val set_row_homogeneous:
  t structure ptr -> bool -> unit
val set_row_spacing:
  t structure ptr -> Unsigned.uint32 -> unit
