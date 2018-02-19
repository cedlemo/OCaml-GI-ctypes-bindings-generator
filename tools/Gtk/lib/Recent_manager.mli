open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_recent_manager_new return type object not handled*)
(*Not implemented gtk_recent_manager_get_default return type object not handled*)
val add_full:
  t structure ptr -> string -> Recent_data.t structure ptr -> bool
val add_item:
  t structure ptr -> string -> bool
val get_items:
  t structure ptr -> List.t structure ptr
val has_item:
  t structure ptr -> string -> bool
val lookup_item:
  t structure ptr -> string -> (Recent_info.t structure ptr option, Error.t structure ptr option) result
val move_item:
  t structure ptr -> string -> string option -> (bool, Error.t structure ptr option) result
val purge_items:
  t structure ptr -> (int32, Error.t structure ptr option) result
val remove_item:
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
