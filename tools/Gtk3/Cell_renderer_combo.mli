open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Cell_renderer.t ptr
