open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_rotate_new" (Widget.t_typ @-> returning (Gesture.t_typ))
let get_angle_delta =
  foreign "gtk_gesture_rotate_get_angle_delta" (t_typ @-> returning (double))
