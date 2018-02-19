open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_grid_new return type object not handled*)
(*Not implemented gtk_grid_attach type object not implemented*)
(*Not implemented gtk_grid_attach_next_to type object not implemented*)
let get_baseline_row =
  foreign "gtk_grid_get_baseline_row" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_grid_get_child_at return type object not handled*)
let get_column_homogeneous =
  foreign "gtk_grid_get_column_homogeneous" (ptr t_typ @-> returning (bool))
let get_column_spacing =
  foreign "gtk_grid_get_column_spacing" (ptr t_typ @-> returning (uint32_t))
let get_row_baseline_position =
  foreign "gtk_grid_get_row_baseline_position" (ptr t_typ @-> int32_t @-> returning (Baseline_position.t_view))
let get_row_homogeneous =
  foreign "gtk_grid_get_row_homogeneous" (ptr t_typ @-> returning (bool))
let get_row_spacing =
  foreign "gtk_grid_get_row_spacing" (ptr t_typ @-> returning (uint32_t))
let insert_column =
  foreign "gtk_grid_insert_column" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_grid_insert_next_to type object not implemented*)
let insert_row =
  foreign "gtk_grid_insert_row" (ptr t_typ @-> int32_t @-> returning (void))
let remove_column =
  foreign "gtk_grid_remove_column" (ptr t_typ @-> int32_t @-> returning (void))
let remove_row =
  foreign "gtk_grid_remove_row" (ptr t_typ @-> int32_t @-> returning (void))
let set_baseline_row =
  foreign "gtk_grid_set_baseline_row" (ptr t_typ @-> int32_t @-> returning (void))
let set_column_homogeneous =
  foreign "gtk_grid_set_column_homogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_column_spacing =
  foreign "gtk_grid_set_column_spacing" (ptr t_typ @-> uint32_t @-> returning (void))
let set_row_baseline_position =
  foreign "gtk_grid_set_row_baseline_position" (ptr t_typ @-> int32_t @-> Baseline_position.t_view @-> returning (void))
let set_row_homogeneous =
  foreign "gtk_grid_set_row_homogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_row_spacing =
  foreign "gtk_grid_set_row_spacing" (ptr t_typ @-> uint32_t @-> returning (void))
