open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Cell_renderer.t
val set_fixed_height_from_font :
  t -> int32 -> unit
