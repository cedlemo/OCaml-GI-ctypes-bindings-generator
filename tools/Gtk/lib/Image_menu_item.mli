open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val create_from_stock:
  string -> Accel_group.t -> Widget.t
val create_with_label:
  string -> Widget.t
val create_with_mnemonic:
  string -> Widget.t
val get_always_show_image:
  t -> bool
val get_image:
  t -> Widget.t
val get_use_stock:
  t -> bool
val set_accel_group:
  t -> Accel_group.t -> unit
val set_always_show_image:
  t -> bool -> unit
val set_image:
  t -> Widget.t -> unit
val set_use_stock:
  t -> bool -> unit
