open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_button =
  foreign "gtk_gesture_single_get_button" (t_typ @-> returning (uint32_t))
let get_current_button =
  foreign "gtk_gesture_single_get_current_button" (t_typ @-> returning (uint32_t))
let get_current_sequence =
  foreign "gtk_gesture_single_get_current_sequence" (t_typ @-> returning (ptr_opt Event_sequence.t_typ))
let get_exclusive =
  foreign "gtk_gesture_single_get_exclusive" (t_typ @-> returning (bool))
let get_touch_only =
  foreign "gtk_gesture_single_get_touch_only" (t_typ @-> returning (bool))
let set_button =
  foreign "gtk_gesture_single_set_button" (t_typ @-> uint32_t @-> returning (void))
let set_exclusive =
  foreign "gtk_gesture_single_set_exclusive" (t_typ @-> bool @-> returning (void))
let set_touch_only =
  foreign "gtk_gesture_single_set_touch_only" (t_typ @-> bool @-> returning (void))
