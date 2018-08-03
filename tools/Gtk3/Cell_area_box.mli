open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Cell_area.t ptr
val get_spacing :
  t -> int32
val pack_end :
  t -> Cell_renderer.t ptr -> bool -> bool -> bool -> unit
val pack_start :
  t -> Cell_renderer.t ptr -> bool -> bool -> bool -> unit
val set_spacing :
  t -> int32 -> unit
