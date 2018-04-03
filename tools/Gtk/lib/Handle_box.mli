open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val get_child_detached :
  t -> bool
val get_handle_position :
  t -> Position_type.t
val get_shadow_type :
  t -> Shadow_type.t
val get_snap_edge :
  t -> Position_type.t
val set_handle_position :
  t -> Position_type.t -> unit
val set_shadow_type :
  t -> Shadow_type.t -> unit
val set_snap_edge :
  t -> Position_type.t -> unit
