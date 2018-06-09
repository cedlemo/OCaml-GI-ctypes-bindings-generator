open Ctypes

type t
val t_typ : t typ

val clear_cache :
  t -> unit
val convert_child_iter_to_iter :
  t -> Tree_iter.t structure ptr -> (bool * Tree_iter.t structure)
val convert_child_path_to_path :
  t -> Tree_path.t structure ptr -> Tree_path.t structure ptr option
val convert_iter_to_child_iter :
  t -> Tree_iter.t structure ptr -> (Tree_iter.t structure)
val convert_path_to_child_path :
  t -> Tree_path.t structure ptr -> Tree_path.t structure ptr option
(*Not implemented gtk_tree_model_filter_get_model return type interface not handled*)
val refilter :
  t -> unit
(*Not implemented gtk_tree_model_filter_set_modify_func type C Array type for Types.Array tag not implemented*)
val set_visible_column :
  t -> int32 -> unit
(*Not implemented gtk_tree_model_filter_set_visible_func type callback not implemented*)
