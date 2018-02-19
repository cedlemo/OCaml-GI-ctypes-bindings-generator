open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_gesture_pan_new type object not implemented*)
let get_orientation =
  foreign "gtk_gesture_pan_get_orientation" (ptr t_typ @-> returning (Orientation.t_view))
let set_orientation =
  foreign "gtk_gesture_pan_set_orientation" (ptr t_typ @-> Orientation.t_view @-> returning (void))
