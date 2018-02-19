open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_switch_new return type object not handled*)
let get_active =
  foreign "gtk_switch_get_active" (ptr t_typ @-> returning (bool))
let get_state =
  foreign "gtk_switch_get_state" (ptr t_typ @-> returning (bool))
let set_active =
  foreign "gtk_switch_set_active" (ptr t_typ @-> bool @-> returning (void))
let set_state =
  foreign "gtk_switch_set_state" (ptr t_typ @-> bool @-> returning (void))
