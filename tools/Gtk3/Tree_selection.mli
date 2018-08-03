open Ctypes

type t
val t_typ : t typ

val count_selected_rows :
  t -> int32
val get_mode :
  t -> Selection_mode.t
(*Not implemented gtk_tree_selection_get_selected type interface not implemented*)
(*Not implemented gtk_tree_selection_get_selected_rows type interface not implemented*)
val get_tree_view :
  t -> Tree_view.t ptr
val iter_is_selected :
  t -> Tree_iter.t structure ptr -> bool
val path_is_selected :
  t -> Tree_path.t structure ptr -> bool
val select_all :
  t -> unit
val select_iter :
  t -> Tree_iter.t structure ptr -> unit
val select_path :
  t -> Tree_path.t structure ptr -> unit
val select_range :
  t -> Tree_path.t structure ptr -> Tree_path.t structure ptr -> unit
(*Not implemented gtk_tree_selection_selected_foreach type callback not implemented*)
val set_mode :
  t -> Selection_mode.t -> unit
(*Not implemented gtk_tree_selection_set_select_function type callback not implemented*)
val unselect_all :
  t -> unit
val unselect_iter :
  t -> Tree_iter.t structure ptr -> unit
val unselect_path :
  t -> Tree_path.t structure ptr -> unit
val unselect_range :
  t -> Tree_path.t structure ptr -> Tree_path.t structure ptr -> unit
