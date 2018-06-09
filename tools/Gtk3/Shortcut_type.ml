open Ctypes
open Foreign

type t = Accelerator | Gesture_pinch | Gesture_stretch | Gesture_rotate_clockwise | Gesture_rotate_counterclockwise | Gesture_two_finger_swipe_left | Gesture_two_finger_swipe_right | Gesture

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Accelerator
  else if v = Unsigned.UInt32.of_int 1 then Gesture_pinch
  else if v = Unsigned.UInt32.of_int 2 then Gesture_stretch
  else if v = Unsigned.UInt32.of_int 3 then Gesture_rotate_clockwise
  else if v = Unsigned.UInt32.of_int 4 then Gesture_rotate_counterclockwise
  else if v = Unsigned.UInt32.of_int 5 then Gesture_two_finger_swipe_left
  else if v = Unsigned.UInt32.of_int 6 then Gesture_two_finger_swipe_right
  else if v = Unsigned.UInt32.of_int 7 then Gesture
  else raise (Invalid_argument "Unexpected Shortcut_type value")

let to_value = function
  | Accelerator -> Unsigned.UInt32.of_int 0
  | Gesture_pinch -> Unsigned.UInt32.of_int 1
  | Gesture_stretch -> Unsigned.UInt32.of_int 2
  | Gesture_rotate_clockwise -> Unsigned.UInt32.of_int 3
  | Gesture_rotate_counterclockwise -> Unsigned.UInt32.of_int 4
  | Gesture_two_finger_swipe_left -> Unsigned.UInt32.of_int 5
  | Gesture_two_finger_swipe_right -> Unsigned.UInt32.of_int 6
  | Gesture -> Unsigned.UInt32.of_int 7

let t_view = view ~read:of_value ~write:to_value uint32_t

