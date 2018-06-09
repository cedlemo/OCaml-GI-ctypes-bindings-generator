open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_grid_new" (void @-> returning (Widget.t_typ))
let attach =
  foreign "gtk_grid_attach" (t_typ @-> Widget.t_typ @-> int32_t @-> int32_t @-> int32_t @-> int32_t @-> returning (void))
let attach_next_to =
  foreign "gtk_grid_attach_next_to" (t_typ @-> Widget.t_typ @-> Widget.t_typ @-> Position_type.t_view @-> int32_t @-> int32_t @-> returning (void))
let get_baseline_row =
  foreign "gtk_grid_get_baseline_row" (t_typ @-> returning (int32_t))
let get_child_at =
  foreign "gtk_grid_get_child_at" (t_typ @-> int32_t @-> int32_t @-> returning (Widget.t_typ))
let get_column_homogeneous =
  foreign "gtk_grid_get_column_homogeneous" (t_typ @-> returning (bool))
let get_column_spacing =
  foreign "gtk_grid_get_column_spacing" (t_typ @-> returning (uint32_t))
let get_row_baseline_position =
  foreign "gtk_grid_get_row_baseline_position" (t_typ @-> int32_t @-> returning (Baseline_position.t_view))
let get_row_homogeneous =
  foreign "gtk_grid_get_row_homogeneous" (t_typ @-> returning (bool))
let get_row_spacing =
  foreign "gtk_grid_get_row_spacing" (t_typ @-> returning (uint32_t))
let insert_column =
  foreign "gtk_grid_insert_column" (t_typ @-> int32_t @-> returning (void))
let insert_next_to =
  foreign "gtk_grid_insert_next_to" (t_typ @-> Widget.t_typ @-> Position_type.t_view @-> returning (void))
let insert_row =
  foreign "gtk_grid_insert_row" (t_typ @-> int32_t @-> returning (void))
let remove_column =
  foreign "gtk_grid_remove_column" (t_typ @-> int32_t @-> returning (void))
let remove_row =
  foreign "gtk_grid_remove_row" (t_typ @-> int32_t @-> returning (void))
let set_baseline_row =
  foreign "gtk_grid_set_baseline_row" (t_typ @-> int32_t @-> returning (void))
let set_column_homogeneous =
  foreign "gtk_grid_set_column_homogeneous" (t_typ @-> bool @-> returning (void))
let set_column_spacing =
  foreign "gtk_grid_set_column_spacing" (t_typ @-> uint32_t @-> returning (void))
let set_row_baseline_position =
  foreign "gtk_grid_set_row_baseline_position" (t_typ @-> int32_t @-> Baseline_position.t_view @-> returning (void))
let set_row_homogeneous =
  foreign "gtk_grid_set_row_homogeneous" (t_typ @-> bool @-> returning (void))
let set_row_spacing =
  foreign "gtk_grid_set_row_spacing" (t_typ @-> uint32_t @-> returning (void))
