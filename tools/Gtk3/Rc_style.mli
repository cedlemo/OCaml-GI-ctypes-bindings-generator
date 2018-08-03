open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val copy :
  t -> t ptr
