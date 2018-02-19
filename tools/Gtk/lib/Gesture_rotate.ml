open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_gesture_rotate_new type object not implemented*)
let get_angle_delta =
  foreign "gtk_gesture_rotate_get_angle_delta" (ptr t_typ @-> returning (double))
