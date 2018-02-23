open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let clear_cache =
  foreign "gtk_tree_model_sort_clear_cache" (t_typ @-> returning (void))
let convert_child_iter_to_iter self child_iter =
  let sort_iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let convert_child_iter_to_iter_raw =
    foreign "gtk_tree_model_sort_convert_child_iter_to_iter" (t_typ @-> ptr Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning bool)
  in
  let ret = convert_child_iter_to_iter_raw self child_iter sort_iter_ptr in
  let sort_iter = !@ sort_iter_ptr in
  (ret, sort_iter)
let convert_child_path_to_path =
  foreign "gtk_tree_model_sort_convert_child_path_to_path" (t_typ @-> ptr Tree_path.t_typ @-> returning (ptr_opt Tree_path.t_typ))
let convert_iter_to_child_iter self sorted_iter =
  let child_iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let convert_iter_to_child_iter_raw =
    foreign "gtk_tree_model_sort_convert_iter_to_child_iter" (t_typ @-> ptr Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning void)
  in
  let ret = convert_iter_to_child_iter_raw self sorted_iter child_iter_ptr in
  let child_iter = !@ child_iter_ptr in
  (child_iter)
let convert_path_to_child_path =
  foreign "gtk_tree_model_sort_convert_path_to_child_path" (t_typ @-> ptr Tree_path.t_typ @-> returning (ptr_opt Tree_path.t_typ))
(*Not implemented gtk_tree_model_sort_get_model return type interface not handled*)
let iter_is_valid =
  foreign "gtk_tree_model_sort_iter_is_valid" (t_typ @-> ptr Tree_iter.t_typ @-> returning (bool))
let reset_default_sort_func =
  foreign "gtk_tree_model_sort_reset_default_sort_func" (t_typ @-> returning (void))
