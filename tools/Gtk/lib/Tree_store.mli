open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tree_store_newv type C Array type for Types.Array tag not implemented*)
val append :
  t -> Tree_iter.t structure ptr option -> (Tree_iter.t structure)
val clear :
  t -> unit
val insert :
  t -> Tree_iter.t structure ptr option -> int32 -> (Tree_iter.t structure)
val insert_after :
  t -> Tree_iter.t structure ptr option -> Tree_iter.t structure ptr option -> (Tree_iter.t structure)
val insert_before :
  t -> Tree_iter.t structure ptr option -> Tree_iter.t structure ptr option -> (Tree_iter.t structure)
(*Not implemented gtk_tree_store_insert_with_valuesv type C Array type for Types.Array tag not implemented*)
val is_ancestor :
  t -> Tree_iter.t structure ptr -> Tree_iter.t structure ptr -> bool
val iter_depth :
  t -> Tree_iter.t structure ptr -> int32
val iter_is_valid :
  t -> Tree_iter.t structure ptr -> bool
val move_after :
  t -> Tree_iter.t structure ptr -> Tree_iter.t structure ptr option -> unit
val move_before :
  t -> Tree_iter.t structure ptr -> Tree_iter.t structure ptr option -> unit
val prepend :
  t -> Tree_iter.t structure ptr option -> (Tree_iter.t structure)
val remove :
  t -> Tree_iter.t structure ptr -> bool
(*Not implemented gtk_tree_store_set_column_types type C Array type for Types.Array tag not implemented*)
val set_value :
  t -> Tree_iter.t structure ptr -> int32 -> Value.t structure ptr -> unit
(*Not implemented gtk_tree_store_set_valuesv type C Array type for Types.Array tag not implemented*)
val swap :
  t -> Tree_iter.t structure ptr -> Tree_iter.t structure ptr -> unit
