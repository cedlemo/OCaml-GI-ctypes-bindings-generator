open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_paned_new return type object not handled*)
(*Not implemented gtk_paned_add1 type object not implemented*)
(*Not implemented gtk_paned_add2 type object not implemented*)
(*Not implemented gtk_paned_get_child1 return type object not handled*)
(*Not implemented gtk_paned_get_child2 return type object not handled*)
(*Not implemented gtk_paned_get_handle_window return type object not handled*)
val get_position:
  t structure ptr -> int32
val get_wide_handle:
  t structure ptr -> bool
(*Not implemented gtk_paned_pack1 type object not implemented*)
(*Not implemented gtk_paned_pack2 type object not implemented*)
val set_position:
  t structure ptr -> int32 -> unit
val set_wide_handle:
  t structure ptr -> bool -> unit
