open Ctypes

type t
val t_typ : t typ

val clear_cache:
  t structure ptr -> unit
val convert_child_iter_to_iter :
  t structure ptr -> Tree_iter.t structure ptr -> (bool * Tree_iter.t structure)
val convert_child_path_to_path:
  t structure ptr -> Tree_path.t structure ptr -> Tree_path.t structure ptr option
val convert_iter_to_child_iter :
  t structure ptr -> Tree_iter.t structure ptr -> (Tree_iter.t structure)
val convert_path_to_child_path:
  t structure ptr -> Tree_path.t structure ptr -> Tree_path.t structure ptr option
(*Not implemented gtk_tree_model_sort_get_model return type interface not handled*)
val iter_is_valid:
  t structure ptr -> Tree_iter.t structure ptr -> bool
val reset_default_sort_func:
  t structure ptr -> unit
