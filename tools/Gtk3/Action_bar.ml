open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_action_bar_new" (void @-> returning (ptr Widget.t_typ))
let get_center_widget =
  foreign "gtk_action_bar_get_center_widget" (t_typ @-> returning (ptr_opt Widget.t_typ))
let pack_end =
  foreign "gtk_action_bar_pack_end" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let pack_start =
  foreign "gtk_action_bar_pack_start" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let set_center_widget =
  foreign "gtk_action_bar_set_center_widget" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
