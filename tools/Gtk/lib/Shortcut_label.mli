open Ctypes

type t
val t_typ : t typ

val create:
  string -> Widget.t
val get_accelerator:
  t -> string option
val get_disabled_text:
  t -> string option
val set_accelerator:
  t -> string -> unit
val set_disabled_text:
  t -> string -> unit
