open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_custom_title:
  t -> Widget.t
val get_decoration_layout:
  t -> string option
val get_has_subtitle:
  t -> bool
val get_show_close_button:
  t -> bool
val get_subtitle:
  t -> string option
val get_title:
  t -> string option
val pack_end:
  t -> Widget.t -> unit
val pack_start:
  t -> Widget.t -> unit
val set_custom_title:
  t -> Widget.t -> unit
val set_decoration_layout:
  t -> string option -> unit
val set_has_subtitle:
  t -> bool -> unit
val set_show_close_button:
  t -> bool -> unit
val set_subtitle:
  t -> string option -> unit
val set_title:
  t -> string option -> unit
