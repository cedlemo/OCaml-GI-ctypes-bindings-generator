open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_event_box_new" (void @-> returning (ptr Widget.t_typ))
let get_above_child =
  foreign "gtk_event_box_get_above_child" (t_typ @-> returning (bool))
let get_visible_window =
  foreign "gtk_event_box_get_visible_window" (t_typ @-> returning (bool))
let set_above_child =
  foreign "gtk_event_box_set_above_child" (t_typ @-> bool @-> returning (void))
let set_visible_window =
  foreign "gtk_event_box_set_visible_window" (t_typ @-> bool @-> returning (void))
