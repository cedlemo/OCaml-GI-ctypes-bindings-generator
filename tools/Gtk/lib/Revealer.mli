open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_revealer_new return type object not handled*)
val get_child_revealed:
  t structure ptr -> bool
val get_reveal_child:
  t structure ptr -> bool
val get_transition_duration:
  t structure ptr -> Unsigned.uint32
val get_transition_type:
  t structure ptr -> Revealer_transition_type.t
val set_reveal_child:
  t structure ptr -> bool -> unit
val set_transition_duration:
  t structure ptr -> Unsigned.uint32 -> unit
val set_transition_type:
  t structure ptr -> Revealer_transition_type.t -> unit
