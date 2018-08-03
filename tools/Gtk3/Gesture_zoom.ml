open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_zoom_new" (ptr Widget.t_typ @-> returning (ptr Gesture.t_typ))
let get_scale_delta =
  foreign "gtk_gesture_zoom_get_scale_delta" (t_typ @-> returning (double))
