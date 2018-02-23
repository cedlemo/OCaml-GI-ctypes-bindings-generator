open Ctypes

type t
val t_typ : t typ

val create:
  string option -> Window.t -> File_chooser_action.t -> string option -> string option -> t
val get_accept_label:
  t -> string option
val get_cancel_label:
  t -> string option
val set_accept_label:
  t -> string option -> unit
val set_cancel_label:
  t -> string option -> unit
