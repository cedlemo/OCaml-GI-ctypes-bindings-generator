open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_for_interval :
  float -> float -> Widget.t ptr
val add_offset_value :
  t -> string -> float -> unit
val get_inverted :
  t -> bool
val get_max_value :
  t -> float
val get_min_value :
  t -> float
val get_mode :
  t -> Level_bar_mode.t
val get_offset_value :
  t -> string option -> (bool * float)
val get_value :
  t -> float
val remove_offset_value :
  t -> string option -> unit
val set_inverted :
  t -> bool -> unit
val set_max_value :
  t -> float -> unit
val set_min_value :
  t -> float -> unit
val set_mode :
  t -> Level_bar_mode.t -> unit
val set_value :
  t -> float -> unit
