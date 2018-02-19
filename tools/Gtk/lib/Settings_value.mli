open Ctypes

type t
val t_typ : t structure typ

val f_origin: (string, t structure) field
val f_value: (Value.t structure, t structure) field

