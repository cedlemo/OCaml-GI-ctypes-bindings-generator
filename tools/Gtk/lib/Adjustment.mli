open Ctypes

type t
val t_typ : t typ

val create:
  float -> float -> float -> float -> float -> float -> t
val changed:
  t -> unit
val clamp_page:
  t -> float -> float -> unit
val configure:
  t -> float -> float -> float -> float -> float -> float -> unit
val get_lower:
  t -> float
val get_minimum_increment:
  t -> float
val get_page_increment:
  t -> float
val get_page_size:
  t -> float
val get_step_increment:
  t -> float
val get_upper:
  t -> float
val get_value:
  t -> float
val set_lower:
  t -> float -> unit
val set_page_increment:
  t -> float -> unit
val set_page_size:
  t -> float -> unit
val set_step_increment:
  t -> float -> unit
val set_upper:
  t -> float -> unit
val set_value:
  t -> float -> unit
val value_changed:
  t -> unit
