open Ctypes

type t
val t_typ : t structure typ

val f_pspec: (Param_spec.t ptr, t structure) field
val f_value: (Value.t structure ptr, t structure) field

