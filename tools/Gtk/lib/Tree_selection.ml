open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let count_selected_rows =
  foreign "gtk_tree_selection_count_selected_rows" (ptr t_typ @-> returning (int32_t))
let get_mode =
  foreign "gtk_tree_selection_get_mode" (ptr t_typ @-> returning (Selection_mode.t_view))
(*Not implemented gtk_tree_selection_get_selected type interface not implemented*)
(*Not implemented gtk_tree_selection_get_selected_rows type interface not implemented*)
(*Not implemented gtk_tree_selection_get_tree_view return type object not handled*)
let iter_is_selected =
  foreign "gtk_tree_selection_iter_is_selected" (ptr t_typ @-> ptr Tree_iter.t_typ @-> returning (bool))
let path_is_selected =
  foreign "gtk_tree_selection_path_is_selected" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (bool))
let select_all =
  foreign "gtk_tree_selection_select_all" (ptr t_typ @-> returning (void))
let select_iter =
  foreign "gtk_tree_selection_select_iter" (ptr t_typ @-> ptr Tree_iter.t_typ @-> returning (void))
let select_path =
  foreign "gtk_tree_selection_select_path" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let select_range =
  foreign "gtk_tree_selection_select_range" (ptr t_typ @-> ptr Tree_path.t_typ @-> ptr Tree_path.t_typ @-> returning (void))
(*Not implemented gtk_tree_selection_selected_foreach type callback not implemented*)
let set_mode =
  foreign "gtk_tree_selection_set_mode" (ptr t_typ @-> Selection_mode.t_view @-> returning (void))
(*Not implemented gtk_tree_selection_set_select_function type callback not implemented*)
let unselect_all =
  foreign "gtk_tree_selection_unselect_all" (ptr t_typ @-> returning (void))
let unselect_iter =
  foreign "gtk_tree_selection_unselect_iter" (ptr t_typ @-> ptr Tree_iter.t_typ @-> returning (void))
let unselect_path =
  foreign "gtk_tree_selection_unselect_path" (ptr t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let unselect_range =
  foreign "gtk_tree_selection_unselect_range" (ptr t_typ @-> ptr Tree_path.t_typ @-> ptr Tree_path.t_typ @-> returning (void))
