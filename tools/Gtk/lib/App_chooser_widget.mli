open Ctypes

type t
val t_typ : t typ

val create:
  string -> Widget.t
val get_default_text:
  t -> string option
val get_show_all:
  t -> bool
val get_show_default:
  t -> bool
val get_show_fallback:
  t -> bool
val get_show_other:
  t -> bool
val get_show_recommended:
  t -> bool
val set_default_text:
  t -> string -> unit
val set_show_all:
  t -> bool -> unit
val set_show_default:
  t -> bool -> unit
val set_show_fallback:
  t -> bool -> unit
val set_show_other:
  t -> bool -> unit
val set_show_recommended:
  t -> bool -> unit
