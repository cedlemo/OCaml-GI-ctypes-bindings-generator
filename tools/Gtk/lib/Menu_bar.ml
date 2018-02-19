open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_menu_bar_new return type object not handled*)
(*Not implemented gtk_menu_bar_new_from_model type object not implemented*)
let get_child_pack_direction =
  foreign "gtk_menu_bar_get_child_pack_direction" (ptr t_typ @-> returning (Pack_direction.t_view))
let get_pack_direction =
  foreign "gtk_menu_bar_get_pack_direction" (ptr t_typ @-> returning (Pack_direction.t_view))
let set_child_pack_direction =
  foreign "gtk_menu_bar_set_child_pack_direction" (ptr t_typ @-> Pack_direction.t_view @-> returning (void))
let set_pack_direction =
  foreign "gtk_menu_bar_set_pack_direction" (ptr t_typ @-> Pack_direction.t_view @-> returning (void))
