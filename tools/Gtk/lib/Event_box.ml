open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_event_box_new return type object not handled*)
let get_above_child =
  foreign "gtk_event_box_get_above_child" (ptr t_typ @-> returning (bool))
let get_visible_window =
  foreign "gtk_event_box_get_visible_window" (ptr t_typ @-> returning (bool))
let set_above_child =
  foreign "gtk_event_box_set_above_child" (ptr t_typ @-> bool @-> returning (void))
let set_visible_window =
  foreign "gtk_event_box_set_visible_window" (ptr t_typ @-> bool @-> returning (void))
