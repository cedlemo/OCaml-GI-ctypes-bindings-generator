open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_toggle_action_new return type object not handled*)
let get_active =
  foreign "gtk_toggle_action_get_active" (ptr t_typ @-> returning (bool))
let get_draw_as_radio =
  foreign "gtk_toggle_action_get_draw_as_radio" (ptr t_typ @-> returning (bool))
let set_active =
  foreign "gtk_toggle_action_set_active" (ptr t_typ @-> bool @-> returning (void))
let set_draw_as_radio =
  foreign "gtk_toggle_action_set_draw_as_radio" (ptr t_typ @-> bool @-> returning (void))
let toggled =
  foreign "gtk_toggle_action_toggled" (ptr t_typ @-> returning (void))
