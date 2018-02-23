open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_zoom_new" (Widget.t_typ @-> returning (Gesture.t_typ))
let get_scale_delta =
  foreign "gtk_gesture_zoom_get_scale_delta" (t_typ @-> returning (double))
