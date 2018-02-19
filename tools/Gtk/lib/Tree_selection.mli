open Ctypes

type t
val t_typ : t typ

val count_selected_rows:
  t structure ptr -> int32
val get_mode:
  t structure ptr -> Selection_mode.t
(*Not implemented gtk_tree_selection_get_selected type interface not implemented*)
(*Not implemented gtk_tree_selection_get_selected_rows type interface not implemented*)
(*Not implemented gtk_tree_selection_get_tree_view return type object not handled*)
val iter_is_selected:
  t structure ptr -> Tree_iter.t structure ptr -> bool
val path_is_selected:
  t structure ptr -> Tree_path.t structure ptr -> bool
val select_all:
  t structure ptr -> unit
val select_iter:
  t structure ptr -> Tree_iter.t structure ptr -> unit
val select_path:
  t structure ptr -> Tree_path.t structure ptr -> unit
val select_range:
  t structure ptr -> Tree_path.t structure ptr -> Tree_path.t structure ptr -> unit
(*Not implemented gtk_tree_selection_selected_foreach type callback not implemented*)
val set_mode:
  t structure ptr -> Selection_mode.t -> unit
(*Not implemented gtk_tree_selection_set_select_function type callback not implemented*)
val unselect_all:
  t structure ptr -> unit
val unselect_iter:
  t structure ptr -> Tree_iter.t structure ptr -> unit
val unselect_path:
  t structure ptr -> Tree_path.t structure ptr -> unit
val unselect_range:
  t structure ptr -> Tree_path.t structure ptr -> Tree_path.t structure ptr -> unit
