open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_long_press_new" (ptr Widget.t_typ @-> returning (ptr Gesture.t_typ))
