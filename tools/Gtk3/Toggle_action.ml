open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_toggle_action_new" (string @-> string_opt @-> string_opt @-> string_opt @-> returning (ptr t_typ))
let get_active =
  foreign "gtk_toggle_action_get_active" (t_typ @-> returning (bool))
let get_draw_as_radio =
  foreign "gtk_toggle_action_get_draw_as_radio" (t_typ @-> returning (bool))
let set_active =
  foreign "gtk_toggle_action_set_active" (t_typ @-> bool @-> returning (void))
let set_draw_as_radio =
  foreign "gtk_toggle_action_set_draw_as_radio" (t_typ @-> bool @-> returning (void))
let toggled =
  foreign "gtk_toggle_action_toggled" (t_typ @-> returning (void))
