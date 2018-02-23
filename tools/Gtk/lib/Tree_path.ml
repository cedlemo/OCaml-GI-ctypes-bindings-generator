open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Tree_path"

let create =
  foreign "gtk_tree_path_new" (void @-> returning (ptr t_typ))
let create_first =
  foreign "gtk_tree_path_new_first" (void @-> returning (ptr t_typ))
(*Not implemented gtk_tree_path_new_from_indicesv type C Array type for Types.Array tag not implemented*)
let create_from_string =
  foreign "gtk_tree_path_new_from_string" (string @-> returning (ptr t_typ))
let append_index =
  foreign "gtk_tree_path_append_index" (t_typ @-> int32_t @-> returning (void))
let compare =
  foreign "gtk_tree_path_compare" (t_typ @-> ptr t_typ @-> returning (int32_t))
let copy =
  foreign "gtk_tree_path_copy" (t_typ @-> returning (ptr t_typ))
let down =
  foreign "gtk_tree_path_down" (t_typ @-> returning (void))
let free =
  foreign "gtk_tree_path_free" (t_typ @-> returning (void))
let get_depth =
  foreign "gtk_tree_path_get_depth" (t_typ @-> returning (int32_t))
(*Not implemented gtk_tree_path_get_indices_with_depth return type C Array type for Types.Array tag not handled*)
let is_ancestor =
  foreign "gtk_tree_path_is_ancestor" (t_typ @-> ptr t_typ @-> returning (bool))
let is_descendant =
  foreign "gtk_tree_path_is_descendant" (t_typ @-> ptr t_typ @-> returning (bool))
let next =
  foreign "gtk_tree_path_next" (t_typ @-> returning (void))
let prepend_index =
  foreign "gtk_tree_path_prepend_index" (t_typ @-> int32_t @-> returning (void))
let prev =
  foreign "gtk_tree_path_prev" (t_typ @-> returning (bool))
let to_string =
  foreign "gtk_tree_path_to_string" (t_typ @-> returning (string_opt))
let up =
  foreign "gtk_tree_path_up" (t_typ @-> returning (bool))
