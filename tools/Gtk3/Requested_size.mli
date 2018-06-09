open Ctypes

type t
val t_typ : t structure typ

val f_data: (unit ptr, t structure) field
val f_minimum_size: (int32, t structure) field
val f_natural_size: (int32, t structure) field

