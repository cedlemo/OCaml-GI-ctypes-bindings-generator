open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_from_stock :
  string -> Accel_group.t ptr option -> Widget.t ptr
val create_with_label :
  string -> Widget.t ptr
val create_with_mnemonic :
  string -> Widget.t ptr
val get_always_show_image :
  t -> bool
val get_image :
  t -> Widget.t ptr
val get_use_stock :
  t -> bool
val set_accel_group :
  t -> Accel_group.t ptr -> unit
val set_always_show_image :
  t -> bool -> unit
val set_image :
  t -> Widget.t ptr option -> unit
val set_use_stock :
  t -> bool -> unit
