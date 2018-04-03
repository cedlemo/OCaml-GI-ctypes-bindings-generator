open Ctypes

type t
val t_typ : t structure typ

(*Not implemented gtk_tree_row_reference_new type interface not implemented*)
(*Not implemented gtk_tree_row_reference_new_proxy type interface not implemented*)
val copy :
  t structure ptr -> t structure ptr
val free :
  t structure ptr -> unit
(*Not implemented gtk_tree_row_reference_get_model return type interface not handled*)
val get_path :
  t structure ptr -> Tree_path.t structure ptr option
val valid :
  t structure ptr -> bool
val deleted :
  Object.t -> Tree_path.t structure ptr -> unit
val inserted :
  Object.t -> Tree_path.t structure ptr -> unit
