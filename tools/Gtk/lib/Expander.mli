open Ctypes

type t
val t_typ : t typ

val create:
  string option -> Widget.t
val create_with_mnemonic:
  string option -> Widget.t
val get_expanded:
  t -> bool
val get_label:
  t -> string option
val get_label_fill:
  t -> bool
val get_label_widget:
  t -> Widget.t
val get_resize_toplevel:
  t -> bool
val get_spacing:
  t -> int32
val get_use_markup:
  t -> bool
val get_use_underline:
  t -> bool
val set_expanded:
  t -> bool -> unit
val set_label:
  t -> string option -> unit
val set_label_fill:
  t -> bool -> unit
val set_label_widget:
  t -> Widget.t -> unit
val set_resize_toplevel:
  t -> bool -> unit
val set_spacing:
  t -> int32 -> unit
val set_use_markup:
  t -> bool -> unit
val set_use_underline:
  t -> bool -> unit
