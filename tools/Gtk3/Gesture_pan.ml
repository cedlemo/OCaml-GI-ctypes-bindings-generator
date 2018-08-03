open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_pan_new" (ptr Widget.t_typ @-> Orientation.t_view @-> returning (ptr Gesture.t_typ))
let get_orientation =
  foreign "gtk_gesture_pan_get_orientation" (t_typ @-> returning (Orientation.t_view))
let set_orientation =
  foreign "gtk_gesture_pan_set_orientation" (t_typ @-> Orientation.t_view @-> returning (void))
