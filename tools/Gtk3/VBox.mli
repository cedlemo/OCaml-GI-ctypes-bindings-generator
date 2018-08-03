open Ctypes

type t
val t_typ : t typ

val create :
  bool -> int32 -> Widget.t ptr
