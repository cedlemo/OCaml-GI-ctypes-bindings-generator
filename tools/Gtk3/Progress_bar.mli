open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val get_ellipsize :
  t -> Ellipsize_mode.t
val get_fraction :
  t -> float
val get_inverted :
  t -> bool
val get_pulse_step :
  t -> float
val get_show_text :
  t -> bool
val get_text :
  t -> string option
val pulse :
  t -> unit
val set_ellipsize :
  t -> Ellipsize_mode.t -> unit
val set_fraction :
  t -> float -> unit
val set_inverted :
  t -> bool -> unit
val set_pulse_step :
  t -> float -> unit
val set_show_text :
  t -> bool -> unit
val set_text :
  t -> string option -> unit
