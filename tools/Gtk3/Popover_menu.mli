open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val open_submenu :
  t -> string -> unit
