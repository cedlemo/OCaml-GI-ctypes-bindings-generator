open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_long_press_new" (Widget.t_typ @-> returning (Gesture.t_typ))
