open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_list_store_newv type C Array type for Types.Array tag not implemented*)
val append :
  t structure ptr -> (Tree_iter.t structure)
val clear:
  t structure ptr -> unit
val insert :
  t structure ptr -> int32 -> (Tree_iter.t structure)
val insert_after :
  t structure ptr -> Tree_iter.t structure ptr option -> (Tree_iter.t structure)
val insert_before :
  t structure ptr -> Tree_iter.t structure ptr option -> (Tree_iter.t structure)
(*Not implemented gtk_list_store_insert_with_valuesv type C Array type for Types.Array tag not implemented*)
val iter_is_valid:
  t structure ptr -> Tree_iter.t structure ptr -> bool
val move_after:
  t structure ptr -> Tree_iter.t structure ptr -> Tree_iter.t structure ptr option -> unit
val move_before:
  t structure ptr -> Tree_iter.t structure ptr -> Tree_iter.t structure ptr option -> unit
val prepend :
  t structure ptr -> (Tree_iter.t structure)
val remove:
  t structure ptr -> Tree_iter.t structure ptr -> bool
(*Not implemented gtk_list_store_reorder type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_list_store_set_column_types type C Array type for Types.Array tag not implemented*)
val set_value:
  t structure ptr -> Tree_iter.t structure ptr -> int32 -> Value.t structure ptr -> unit
(*Not implemented gtk_list_store_set_valuesv type C Array type for Types.Array tag not implemented*)
val swap:
  t structure ptr -> Tree_iter.t structure ptr -> Tree_iter.t structure ptr -> unit
