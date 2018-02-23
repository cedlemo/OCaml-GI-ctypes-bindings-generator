open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_swipe_new" (Widget.t_typ @-> returning (Gesture.t_typ))
let get_velocity self =
  let velocity_x_ptr = allocate double 0.0 in
  let velocity_y_ptr = allocate double 0.0 in
  let get_velocity_raw =
    foreign "gtk_gesture_swipe_get_velocity" (t_typ @-> ptr (double) @-> ptr (double) @-> returning bool)
  in
  let ret = get_velocity_raw self velocity_x_ptr velocity_y_ptr in
  let velocity_x = !@ velocity_x_ptr in
  let velocity_y = !@ velocity_y_ptr in
  (ret, velocity_x, velocity_y)
