open Ctypes

type t
val t_typ : t typ

val create:
  string -> string option -> string option -> string option -> t
val get_active:
  t -> bool
val get_draw_as_radio:
  t -> bool
val set_active:
  t -> bool -> unit
val set_draw_as_radio:
  t -> bool -> unit
val toggled:
  t -> unit
