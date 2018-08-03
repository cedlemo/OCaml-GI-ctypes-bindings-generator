open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_label :
  string -> Widget.t ptr
val create_with_mnemonic :
  string -> Widget.t ptr
val activate :
  t -> unit
val deselect :
  t -> unit
val get_accel_path :
  t -> string option
val get_label :
  t -> string option
val get_reserve_indicator :
  t -> bool
val get_right_justified :
  t -> bool
val get_submenu :
  t -> Widget.t ptr option
val get_use_underline :
  t -> bool
val select :
  t -> unit
val set_accel_path :
  t -> string option -> unit
val set_label :
  t -> string -> unit
val set_reserve_indicator :
  t -> bool -> unit
val set_right_justified :
  t -> bool -> unit
val set_submenu :
  t -> Menu.t ptr option -> unit
val set_use_underline :
  t -> bool -> unit
val toggle_size_allocate :
  t -> int32 -> unit
val toggle_size_request :
  t -> int32 -> (int32)
