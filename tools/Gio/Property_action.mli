open Ctypes

type t
val t_typ : t typ

val create :
  string -> Object.t ptr -> string -> t ptr
