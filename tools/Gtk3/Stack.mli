open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val add_named :
  t -> Widget.t -> string -> unit
val add_titled :
  t -> Widget.t -> string -> string -> unit
val get_child_by_name :
  t -> string -> Widget.t
val get_hhomogeneous :
  t -> bool
val get_homogeneous :
  t -> bool
val get_interpolate_size :
  t -> bool
val get_transition_duration :
  t -> Unsigned.uint32
val get_transition_running :
  t -> bool
val get_transition_type :
  t -> Stack_transition_type.t
val get_vhomogeneous :
  t -> bool
val get_visible_child :
  t -> Widget.t
val get_visible_child_name :
  t -> string option
val set_hhomogeneous :
  t -> bool -> unit
val set_homogeneous :
  t -> bool -> unit
val set_interpolate_size :
  t -> bool -> unit
val set_transition_duration :
  t -> Unsigned.uint32 -> unit
val set_transition_type :
  t -> Stack_transition_type.t -> unit
val set_vhomogeneous :
  t -> bool -> unit
val set_visible_child :
  t -> Widget.t -> unit
val set_visible_child_full :
  t -> string -> Stack_transition_type.t -> unit
val set_visible_child_name :
  t -> string -> unit
