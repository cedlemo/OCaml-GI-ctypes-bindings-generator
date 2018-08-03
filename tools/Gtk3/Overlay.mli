open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val add_overlay :
  t -> Widget.t ptr -> unit
val get_overlay_pass_through :
  t -> Widget.t ptr -> bool
val reorder_overlay :
  t -> Widget.t ptr -> int32 -> unit
val set_overlay_pass_through :
  t -> Widget.t ptr -> bool -> unit
