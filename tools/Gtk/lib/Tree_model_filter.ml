open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let clear_cache =
  foreign "gtk_tree_model_filter_clear_cache" (t_typ @-> returning (void))
let convert_child_iter_to_iter self child_iter =
  let filter_iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let convert_child_iter_to_iter_raw =
    foreign "gtk_tree_model_filter_convert_child_iter_to_iter" (t_typ @-> ptr Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning bool)
  in
  let ret = convert_child_iter_to_iter_raw self child_iter filter_iter_ptr in
  let filter_iter = !@ filter_iter_ptr in
  (ret, filter_iter)
let convert_child_path_to_path =
  foreign "gtk_tree_model_filter_convert_child_path_to_path" (t_typ @-> ptr Tree_path.t_typ @-> returning (ptr_opt Tree_path.t_typ))
let convert_iter_to_child_iter self filter_iter =
  let child_iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let convert_iter_to_child_iter_raw =
    foreign "gtk_tree_model_filter_convert_iter_to_child_iter" (t_typ @-> ptr Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning void)
  in
  let ret = convert_iter_to_child_iter_raw self filter_iter child_iter_ptr in
  let child_iter = !@ child_iter_ptr in
  (child_iter)
let convert_path_to_child_path =
  foreign "gtk_tree_model_filter_convert_path_to_child_path" (t_typ @-> ptr Tree_path.t_typ @-> returning (ptr_opt Tree_path.t_typ))
(*Not implemented gtk_tree_model_filter_get_model return type interface not handled*)
let refilter =
  foreign "gtk_tree_model_filter_refilter" (t_typ @-> returning (void))
(*Not implemented gtk_tree_model_filter_set_modify_func type C Array type for Types.Array tag not implemented*)
let set_visible_column =
  foreign "gtk_tree_model_filter_set_visible_column" (t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_tree_model_filter_set_visible_func type callback not implemented*)
