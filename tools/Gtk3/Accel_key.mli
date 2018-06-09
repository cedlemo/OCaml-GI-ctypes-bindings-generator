open Ctypes

type t
val t_typ : t structure typ

val f_accel_key: (Unsigned.uint32, t structure) field
val f_accel_mods: (Modifier_type.t_list, t structure) field
val f_accel_flags: (Unsigned.uint32, t structure) field

