open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_switch_new" (void @-> returning (Widget.t_typ))
let get_active =
  foreign "gtk_switch_get_active" (t_typ @-> returning (bool))
let get_state =
  foreign "gtk_switch_get_state" (t_typ @-> returning (bool))
let set_active =
  foreign "gtk_switch_set_active" (t_typ @-> bool @-> returning (void))
let set_state =
  foreign "gtk_switch_set_state" (t_typ @-> bool @-> returning (void))
