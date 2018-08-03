open Ctypes

type t
val t_typ : t typ

val create :
  Notebook_accessible.t ptr -> Widget.t ptr -> Object.t ptr
val invalidate :
  t -> unit
