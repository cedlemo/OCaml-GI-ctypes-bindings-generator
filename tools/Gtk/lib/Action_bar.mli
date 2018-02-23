open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_center_widget:
  t -> Widget.t
val pack_end:
  t -> Widget.t -> unit
val pack_start:
  t -> Widget.t -> unit
val set_center_widget:
  t -> Widget.t -> unit
