open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_gesture_drag_new" (Widget.t_typ @-> returning (Gesture.t_typ))
let get_offset self =
  let get_offset_raw =
    foreign "gtk_gesture_drag_get_offset" (t_typ @-> ptr (double) @-> ptr (double) @-> returning (bool))
  in
  let x_ptr = allocate double 0.0 in
  let y_ptr = allocate double 0.0 in
  let ret = get_offset_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (ret, x, y)
let get_start_point self =
  let get_start_point_raw =
    foreign "gtk_gesture_drag_get_start_point" (t_typ @-> ptr (double) @-> ptr (double) @-> returning (bool))
  in
  let x_ptr = allocate double 0.0 in
  let y_ptr = allocate double 0.0 in
  let ret = get_start_point_raw self x_ptr y_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (ret, x, y)
