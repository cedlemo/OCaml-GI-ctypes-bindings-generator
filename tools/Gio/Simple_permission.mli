open Ctypes

type t
val t_typ : t typ

val create :
  bool -> Permission.t ptr
