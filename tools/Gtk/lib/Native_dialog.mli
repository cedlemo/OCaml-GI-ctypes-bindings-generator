open Ctypes

type t
val t_typ : t typ

val destroy:
  t -> unit
val get_modal:
  t -> bool
val get_title:
  t -> string option
val get_transient_for:
  t -> Window.t
val get_visible:
  t -> bool
val hide:
  t -> unit
val run:
  t -> int32
val set_modal:
  t -> bool -> unit
val set_title:
  t -> string -> unit
val set_transient_for:
  t -> Window.t -> unit
val show:
  t -> unit
