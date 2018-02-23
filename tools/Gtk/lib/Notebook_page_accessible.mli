open Ctypes

type t
val t_typ : t typ

val create:
  Notebook_accessible.t -> Widget.t -> Object.t
val invalidate:
  t -> unit
