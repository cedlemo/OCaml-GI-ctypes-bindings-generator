open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Tree_row_reference"

(*Not implemented gtk_tree_row_reference_new type interface not implemented*)
(*Not implemented gtk_tree_row_reference_new_proxy type interface not implemented*)
let copy =
  foreign "gtk_tree_row_reference_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_tree_row_reference_free" (ptr t_typ @-> returning (void))
(*Not implemented gtk_tree_row_reference_get_model return type interface not handled*)
let get_path =
  foreign "gtk_tree_row_reference_get_path" (ptr t_typ @-> returning (ptr_opt Tree_path.t_typ))
let valid =
  foreign "gtk_tree_row_reference_valid" (ptr t_typ @-> returning (bool))
let deleted =
  foreign "gtk_tree_row_reference_deleted" (ptr Object.t_typ @-> ptr Tree_path.t_typ @-> returning (void))
let inserted =
  foreign "gtk_tree_row_reference_inserted" (ptr Object.t_typ @-> ptr Tree_path.t_typ @-> returning (void))
