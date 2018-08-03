open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val move :
  t -> Widget.t ptr -> int32 -> int32 -> unit
val put :
  t -> Widget.t ptr -> int32 -> int32 -> unit
