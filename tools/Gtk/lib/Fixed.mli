open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val move :
  t -> Widget.t -> int32 -> int32 -> unit
val put :
  t -> Widget.t -> int32 -> int32 -> unit
