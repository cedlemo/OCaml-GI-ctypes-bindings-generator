open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val get_child_revealed :
  t -> bool
val get_reveal_child :
  t -> bool
val get_transition_duration :
  t -> Unsigned.uint32
val get_transition_type :
  t -> Revealer_transition_type.t
val set_reveal_child :
  t -> bool -> unit
val set_transition_duration :
  t -> Unsigned.uint32 -> unit
val set_transition_type :
  t -> Revealer_transition_type.t -> unit
