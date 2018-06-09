open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val to_rgb :
  float -> float -> float -> (float * float * float)
val get_color :
  t -> (float * float * float)
val get_metrics :
  t -> (int32 * int32)
val is_adjusting :
  t -> bool
val set_color :
  t -> float -> float -> float -> unit
val set_metrics :
  t -> int32 -> int32 -> unit
