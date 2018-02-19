open Ctypes

type t
val t_typ : t typ

val get_button:
  t structure ptr -> Unsigned.uint32
val get_current_button:
  t structure ptr -> Unsigned.uint32
val get_current_sequence:
  t structure ptr -> Event_sequence.t structure ptr option
val get_exclusive:
  t structure ptr -> bool
val get_touch_only:
  t structure ptr -> bool
val set_button:
  t structure ptr -> Unsigned.uint32 -> unit
val set_exclusive:
  t structure ptr -> bool -> unit
val set_touch_only:
  t structure ptr -> bool -> unit
