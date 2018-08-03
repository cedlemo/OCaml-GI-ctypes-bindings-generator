open Ctypes

type t
val t_typ : t typ

val get_name :
  t -> string option
val get_next :
  t -> (bool * string * Menu_model.t ptr)
val get_value :
  t -> Menu_model.t ptr
val next :
  t -> bool
