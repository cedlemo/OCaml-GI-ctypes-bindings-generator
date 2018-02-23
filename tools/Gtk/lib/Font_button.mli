open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val create_with_font:
  string -> Widget.t
val get_font_name:
  t -> string option
val get_show_size:
  t -> bool
val get_show_style:
  t -> bool
val get_title:
  t -> string option
val get_use_font:
  t -> bool
val get_use_size:
  t -> bool
val set_font_name:
  t -> string -> bool
val set_show_size:
  t -> bool -> unit
val set_show_style:
  t -> bool -> unit
val set_title:
  t -> string -> unit
val set_use_font:
  t -> bool -> unit
val set_use_size:
  t -> bool -> unit
