open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_paned_new return type object not handled*)
(*Not implemented gtk_paned_add1 type object not implemented*)
(*Not implemented gtk_paned_add2 type object not implemented*)
(*Not implemented gtk_paned_get_child1 return type object not handled*)
(*Not implemented gtk_paned_get_child2 return type object not handled*)
(*Not implemented gtk_paned_get_handle_window return type object not handled*)
let get_position =
  foreign "gtk_paned_get_position" (ptr t_typ @-> returning (int32_t))
let get_wide_handle =
  foreign "gtk_paned_get_wide_handle" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_paned_pack1 type object not implemented*)
(*Not implemented gtk_paned_pack2 type object not implemented*)
let set_position =
  foreign "gtk_paned_set_position" (ptr t_typ @-> int32_t @-> returning (void))
let set_wide_handle =
  foreign "gtk_paned_set_wide_handle" (ptr t_typ @-> bool @-> returning (void))
