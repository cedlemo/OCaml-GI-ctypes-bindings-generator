open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val add_id :
  t -> Unsigned.uint64 -> unit
val get_id :
  t -> Unsigned.uint64
val get_plug_window :
  t -> Window.t
