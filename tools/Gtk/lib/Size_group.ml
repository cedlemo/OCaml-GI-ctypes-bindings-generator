open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_size_group_new return type object not handled*)
(*Not implemented gtk_size_group_add_widget type object not implemented*)
let get_ignore_hidden =
  foreign "gtk_size_group_get_ignore_hidden" (ptr t_typ @-> returning (bool))
let get_mode =
  foreign "gtk_size_group_get_mode" (ptr t_typ @-> returning (Size_group_mode.t_view))
let get_widgets =
  foreign "gtk_size_group_get_widgets" (ptr t_typ @-> returning (ptr SList.t_typ))
(*Not implemented gtk_size_group_remove_widget type object not implemented*)
let set_ignore_hidden =
  foreign "gtk_size_group_set_ignore_hidden" (ptr t_typ @-> bool @-> returning (void))
let set_mode =
  foreign "gtk_size_group_set_mode" (ptr t_typ @-> Size_group_mode.t_view @-> returning (void))
