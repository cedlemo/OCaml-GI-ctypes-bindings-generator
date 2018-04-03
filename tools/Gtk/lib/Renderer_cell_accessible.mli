open Ctypes

type t
val t_typ : t typ

val create :
  Cell_renderer.t -> Object.t
