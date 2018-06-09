open Ctypes

type t
val t_typ : t typ

val get_name :
  t -> string option
val get_next :
  t -> (bool * string * Variant.t structure ptr)
val get_value :
  t -> Variant.t structure ptr
val next :
  t -> bool
