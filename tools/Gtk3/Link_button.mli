open Ctypes

type t
val t_typ : t typ

val create :
  string -> Widget.t
val create_with_label :
  string -> string option -> Widget.t
val get_uri :
  t -> string option
val get_visited :
  t -> bool
val set_uri :
  t -> string -> unit
val set_visited :
  t -> bool -> unit
