open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_menu_bar_new" (void @-> returning (Widget.t_typ))
let create_from_model =
  foreign "gtk_menu_bar_new_from_model" (Menu_model.t_typ @-> returning (Widget.t_typ))
let get_child_pack_direction =
  foreign "gtk_menu_bar_get_child_pack_direction" (t_typ @-> returning (Pack_direction.t_view))
let get_pack_direction =
  foreign "gtk_menu_bar_get_pack_direction" (t_typ @-> returning (Pack_direction.t_view))
let set_child_pack_direction =
  foreign "gtk_menu_bar_set_child_pack_direction" (t_typ @-> Pack_direction.t_view @-> returning (void))
let set_pack_direction =
  foreign "gtk_menu_bar_set_pack_direction" (t_typ @-> Pack_direction.t_view @-> returning (void))
