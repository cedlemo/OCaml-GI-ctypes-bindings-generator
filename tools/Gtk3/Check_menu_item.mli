open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_label :
  string -> Widget.t ptr
val create_with_mnemonic :
  string -> Widget.t ptr
val get_active :
  t -> bool
val get_draw_as_radio :
  t -> bool
val get_inconsistent :
  t -> bool
val set_active :
  t -> bool -> unit
val set_draw_as_radio :
  t -> bool -> unit
val set_inconsistent :
  t -> bool -> unit
val toggled :
  t -> unit
