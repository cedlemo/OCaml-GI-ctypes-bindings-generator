open Ctypes

type t
val t_typ : t structure typ

val f_key: (Accel_key.t structure, t structure) field
val f_closure: (Closure.t structure ptr, t structure) field
val f_accel_path_quark: (Unsigned.uint32, t structure) field

