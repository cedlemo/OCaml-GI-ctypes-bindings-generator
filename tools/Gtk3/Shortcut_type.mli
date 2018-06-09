open Ctypes

type t = Accelerator | Gesture_pinch | Gesture_stretch | Gesture_rotate_clockwise | Gesture_rotate_counterclockwise | Gesture_two_finger_swipe_left | Gesture_two_finger_swipe_right | Gesture

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

