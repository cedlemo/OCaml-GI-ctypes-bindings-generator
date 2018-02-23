open Ctypes

type t
val t_typ : t typ

val create:
  Orientation.t -> Widget.t
val get_child_non_homogeneous:
  t -> Widget.t -> bool
val get_child_secondary:
  t -> Widget.t -> bool
val get_layout:
  t -> Button_box_style.t
val set_child_non_homogeneous:
  t -> Widget.t -> bool -> unit
val set_child_secondary:
  t -> Widget.t -> bool -> unit
val set_layout:
  t -> Button_box_style.t -> unit
