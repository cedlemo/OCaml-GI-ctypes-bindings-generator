open Ctypes

type t
val t_typ : t typ

val allocate :
  t -> int32 -> int32 -> unit
val get_allocation :
  t -> (int32 * int32)
val get_area :
  t -> Cell_area.t ptr
val get_preferred_height :
  t -> (int32 * int32)
val get_preferred_height_for_width :
  t -> int32 -> (int32 * int32)
val get_preferred_width :
  t -> (int32 * int32)
val get_preferred_width_for_height :
  t -> int32 -> (int32 * int32)
val push_preferred_height :
  t -> int32 -> int32 -> unit
val push_preferred_width :
  t -> int32 -> int32 -> unit
val reset :
  t -> unit
