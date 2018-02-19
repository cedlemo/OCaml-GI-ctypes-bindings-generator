open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_gesture_zoom_new type object not implemented*)
let get_scale_delta =
  foreign "gtk_gesture_zoom_get_scale_delta" (ptr t_typ @-> returning (double))
