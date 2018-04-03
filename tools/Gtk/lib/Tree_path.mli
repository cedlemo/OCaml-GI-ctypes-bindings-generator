open Ctypes

type t
val t_typ : t structure typ

val create :
  unit -> t structure ptr
val create_first :
  unit -> t structure ptr
(*Not implemented gtk_tree_path_new_from_indicesv type C Array type for Types.Array tag not implemented*)
val create_from_string :
  string -> t structure ptr
val append_index :
  t structure ptr -> int32 -> unit
val compare :
  t structure ptr -> t structure ptr -> int32
val copy :
  t structure ptr -> t structure ptr
val down :
  t structure ptr -> unit
val free :
  t structure ptr -> unit
val get_depth :
  t structure ptr -> int32
(*Not implemented gtk_tree_path_get_indices_with_depth return type C Array type for Types.Array tag not handled*)
val is_ancestor :
  t structure ptr -> t structure ptr -> bool
val is_descendant :
  t structure ptr -> t structure ptr -> bool
val next :
  t structure ptr -> unit
val prepend_index :
  t structure ptr -> int32 -> unit
val prev :
  t structure ptr -> bool
val to_string :
  t structure ptr -> string option
val up :
  t structure ptr -> bool
