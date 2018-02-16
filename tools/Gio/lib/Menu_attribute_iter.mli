open Ctypes

type t
val t_typ : t typ

val get_name:
  t structure ptr -> string option
val get_next :
  t structure ptr -> (bool * string * Variant.t structure ptr)
val get_value:
  t structure ptr -> Variant.t structure ptr
val next:
  t structure ptr -> bool
