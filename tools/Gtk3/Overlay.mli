open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val add_overlay :
  t -> Widget.t -> unit
val get_overlay_pass_through :
  t -> Widget.t -> bool
val reorder_overlay :
  t -> Widget.t -> int32 -> unit
val set_overlay_pass_through :
  t -> Widget.t -> bool -> unit
