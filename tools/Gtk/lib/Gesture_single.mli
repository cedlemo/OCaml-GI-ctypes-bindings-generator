open Ctypes

type t
val t_typ : t typ

val get_button :
  t -> Unsigned.uint32
val get_current_button :
  t -> Unsigned.uint32
val get_current_sequence :
  t -> Event_sequence.t structure ptr option
val get_exclusive :
  t -> bool
val get_touch_only :
  t -> bool
val set_button :
  t -> Unsigned.uint32 -> unit
val set_exclusive :
  t -> bool -> unit
val set_touch_only :
  t -> bool -> unit
